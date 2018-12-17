require 'slack_app_request_handler/version'

module SlackAppRequestHandler
  require 'slack_app_request_handler/type_detection'
  require 'slack_app_request_handler/parametarize'

  # # Event Subscriptions
  #
  # ## Handle challenge
  #
  # Slack requires response that have challenge parameter.
  #
  # The request is in body. Sinatra has to parse `request.body.read`.
  #
  # ### Request
  #
  #     "body": {
  #       "type": "url_verification",
  #       "token": "xxxxx",
  #       "challenge": "passed_challenge"
  #     }
  #
  # ### Response
  #
  #     { "challenge": "#{passed_challenge}" }

  class << self
    DEFAULT_OPTIONS = {
      auth: true,
    }.freeze

    def new(o = {})
      Core.new(DEFAULT_OPTIONS.merge(o))
    end
  end

  class Core
    def initialize(options)
      @options = options
    end

    def handle(params, &block)
      case result = Router.new(@options, params).execute!
      when block_given? && Handler
        result.instance_eval(&block)
      when Handler
        ''
      else
        result
      end
    end
  end

  require 'ostruct'
  class Router
    include Parameterize

    def initialize(options, params)
      @options = OpenStruct.new(options)
      @raw_params = OpenStruct.new(params)
    end

    def execute!
      authorize!

      case
      when url_verification?
        { challenge: @raw_params.challenge }
      else
        Handler.new(raw_params: @raw_params, params: params)
      end
    end

    def authorize!
      raise InvalidToken if @options.auth && @options.token != @raw_params.token
    end

    def url_verification?
      @raw_params.type == 'url_verification'
    end
  end

  class Handler
    include TypeDetection

    attr_reader :raw_params, :params

    def initialize(raw_params:, params:)
      @raw_params = raw_params
      @params = params
    end
  end

  class Error < StandardError
  end

  class InvalidToken < Error
  end
end
