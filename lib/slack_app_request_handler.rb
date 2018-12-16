require 'slack_app_request_handler/version'

module SlackAppRequestHandler
  require 'slack_app_request_handler/type_detect'

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
    def initialize(options, params)
      @options = OpenStruct.new(options)
      @params = OpenStruct.new(params)
    end

    def execute!
      authorize!

      case
      when url_verification?
        { challenge: @params.challenge }
      else
        Handler.new
      end
    end

    def authorize!
      raise InvalidToken if @options.auth && @options.token != @params.token
    end

    def url_verification?
      @params.type == 'url_verification'
    end
  end

  class Handler
    include TypeDetect
  end

  class Error < StandardError
  end

  class InvalidToken < Error
  end
end
