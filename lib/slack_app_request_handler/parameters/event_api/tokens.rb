#
# This module generate by ParamsModelsGeneration.
# MUST NOT edit it manually.
#
module SlackAppRequestHandler
  module Parameters
    module EventApi
      class Tokens
        attr_reader :params, :event_wrapper, :bot, :oauth

        def initialize(params, event_wrapper = nil)
          @params = params
          @event_wrapper = event_wrapper && ::SlackAppRequestHandler::Parameters::EventWrapper.new(event_wrapper)
          @bot = params['bot']
          @oauth = params['oauth']
        end

        def to_raw
          params.to_h
        end
      end
    end
  end
end