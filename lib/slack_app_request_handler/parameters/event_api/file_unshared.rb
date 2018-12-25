#
# This module generate by ParamsModelsGeneration.
# MUST NOT edit it manually.
#
module SlackAppRequestHandler
  module Parameters
    module EventApi
      class FileUnshared
        attr_reader :params, :event_wrapper, :file, :file_id, :type

        def initialize(params, event_wrapper = nil)
          @params = params
          @event_wrapper = event_wrapper && ::SlackAppRequestHandler::Parameters::EventWrapper.new(event_wrapper)
          @file = params['file']
          @file_id = params['file_id']
          @type = params['type']
        end

        def to_raw
          params.to_h
        end
      end
    end
  end
end
