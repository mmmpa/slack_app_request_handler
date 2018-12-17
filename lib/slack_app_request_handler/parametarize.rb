require 'active_support/core_ext/string/inflections'
Dir.glob("#{__dir__}/parameters/**/*.rb").each { |f| require(f) }

module SlackAppRequestHandler
  module Parameterize
    private

    def type
      case @raw_params['type']
      when 'event_callback'
        @raw_params['event']['type']
      else
        @raw_params['type']
      end
    end

    def params
      @params ||=
        case
        when @raw_params['command']
          command_params
        else
          event_api_params
        end
    end

    def command_params
      SlackAppRequestHandler::Parameters::Command.new(@raw_params)
    end

    def event_api_params
      name = type.tr('.', '_').camelize
      params_class_name = "::SlackAppRequestHandler::Parameters::EventApi::#{name}"
      defined?(params_class_name.constantize) ? params_class_name.constantize.new(@raw_params.event, @raw_params) : @raw_params
    end
  end
end
