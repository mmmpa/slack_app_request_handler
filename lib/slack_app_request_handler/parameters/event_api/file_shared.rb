#
# This module generate by ParamsModelsGeneration.
# MUST NOT edit it manually.
#
module SlackAppRequestHandler
  module Parameters
  module EventApi
    class FileShared
attr_reader :params, :event_wrapper, :type, :file_id, :file

def initialize(params, event_wrapper = nil)
  @params = params
  @event_wrapper = event_wrapper && ::SlackAppRequestHandler::Parameters::EventWrapper.new(event_wrapper)
    @type = params['type']
  @file_id = params['file_id']
  @file = ::SlackAppRequestHandler::Parameters::EventApi::File.new(params['file'])
end

      def to_raw
        params.to_h
      end
    end
  end
  end
end
