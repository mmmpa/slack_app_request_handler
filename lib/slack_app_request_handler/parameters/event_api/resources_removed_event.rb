#
# This module generate by ParamsModelsGeneration.
# MUST NOT edit it manually.
#
module SlackAppRequestHandler
  module Parameters
    module EventApi
      class ResourcesRemovedEvent
        attr_reader :params, :event_wrapper, :type, :resources

        def initialize(params, event_wrapper = nil)
          @params = params
          @event_wrapper = event_wrapper && ::SlackAppRequestHandler::Parameters::EventWrapper.new(event_wrapper)
          @type = params['type']
          @resources = params['resources'].map { |c| ::SlackAppRequestHandler::Parameters::EventApi::ResourceItem.new(c) }
        end

        def to_raw
          params.to_h
        end
      end
    end
  end
end
