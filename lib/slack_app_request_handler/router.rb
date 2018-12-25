require 'ostruct'
require 'slack_app_request_handler/parameters/command'

module SlackAppRequestHandler
  class Router
    def initialize(options:, commands:, params:)
      @options = options
      @commands = commands
      @raw_params = OpenStruct.new(params)
    end

    def execute!
      authorize!

      case
      when url_verification?
        { challenge: @raw_params.challenge }
      when command? && has_command_class?
        handle_command
      else
        handler
      end
    end

    def authorize!
      raise InvalidToken if @options.auth && @options.token != @raw_params.token
    end

    private

    def handler
      Handler.new(raw_params: @raw_params, params: params)
    end

    def handle_command
      cc = command_class.new
      candidate =
        if cc.respond_to?(:detect)
          cc.detect(command_params.text)
        else
          command_params.text.split(' ').first.to_s
        end

      cc.respond_to?(candidate) ? cc.send(candidate, command_params) : handler
    end

    def command?
      @command ||= @raw_params.command
    end

    def command_class
      @command_class ||= @commands.send(params.command_text)
    end

    def has_command_class?
      !!command_class
    end

    def url_verification?
      @raw_params.type == 'url_verification'
    end

    def type
      @type ||= @raw_params.type == 'event_callback' ? @raw_params.event['type'] : @raw_params.type
    end

    def params
      @params ||=
        case
        when command?
          command_params
        else
          event_api_params
        end
    end

    def command_params
      @command_params ||= SlackAppRequestHandler::Parameters::Command.new(@raw_params)
    end

    def event_api_class
      @event_api_class ||= type.tr('.', '_').camelize.yield_self do |camelized|
        "::SlackAppRequestHandler::Parameters::EventApi::#{camelized}"
      end
    end

    def event_api_params
      @event_api_params ||=
        if defined?(event_api_class.constantize)
          event_api_class.constantize.new(@raw_params.event, @raw_params)
        else
          @raw_params
        end
    end
  end
end