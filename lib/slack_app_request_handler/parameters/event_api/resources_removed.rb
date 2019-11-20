#
# This module generate by ParamsModelsGeneration.
# MUST NOT edit it manually.
#
module SlackAppRequestHandler
  module Parameters
    module EventApi
      class ResourcesRemoved
        attr_reader :params, :event_wrapper, :resources, :type

        def initialize(params, event_wrapper = nil)
          @params = params
          @event_wrapper = event_wrapper && ::SlackAppRequestHandler::Parameters::EventWrapper.new(event_wrapper)
          @resources = params['resources'].map { |c| ::SlackAppRequestHandler::Parameters::EventApi::ResourceItem.new(c) }
          @type = params['type']
        end

        def to_raw
          params.to_h
        end
      end
    end
  end
end
