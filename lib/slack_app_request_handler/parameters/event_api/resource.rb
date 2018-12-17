#
# This module generate by ParamsModelsGeneration.
# MUST NOT edit it manually.
#
module SlackAppRequestHandler
  module Parameters
    module EventApi
      class Resource
        attr_reader :params, :event_wrapper, :type, :grant

        def initialize(params, event_wrapper = nil)
          @params = params
          @event_wrapper = event_wrapper && ::SlackAppRequestHandler::Parameters::EventWrapper.new(event_wrapper)
          @type = params['type']
          @grant = ::SlackAppRequestHandler::Parameters::EventApi::Grant.new(params['grant'])
        end

        def to_raw
          params.to_h
        end
      end
    end
  end
end
