module SlackAppRequestHandler
  require 'slack_app_request_handler/version'
  require 'slack_app_request_handler/errors'

  require 'slack_app_request_handler/core'
  require 'slack_app_request_handler/router'
  require 'slack_app_request_handler/type_detection'
  require 'slack_app_request_handler/handler'

  class << self
    DEFAULT_OPTIONS = {
      auth: true,
      token: nil,
      commands: nil,
      events: nil,
    }.freeze

    def new(o = {})
      Core.new(DEFAULT_OPTIONS.merge(o))
    end
  end
end
