#
# This module generate by ParamsModelsGeneration.
# MUST NOT edit it manually.
#
module SlackAppRequestHandler
  module Parameters
    module EventApi
      class Channel
        attr_reader :params, :event_wrapper, :created, :id, :name

        def initialize(params, event_wrapper = nil)
          @params = params
          @event_wrapper = event_wrapper && ::SlackAppRequestHandler::Parameters::EventWrapper.new(event_wrapper)
          @created = params['created']
          @id = params['id']
          @name = params['name']
        end

        def to_raw
          params.to_h
        end
      end
    end
  end
end
