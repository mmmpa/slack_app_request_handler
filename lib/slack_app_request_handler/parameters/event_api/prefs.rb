#
# This module generate by ParamsModelsGeneration.
# MUST NOT edit it manually.
#
module SlackAppRequestHandler
  module Parameters
  module EventApi
    class Prefs
attr_reader :params, :event_wrapper, :channels, :groups

def initialize(params, event_wrapper = nil)
  @params = params
  @event_wrapper = event_wrapper && ::SlackAppRequestHandler::Parameters::EventWrapper.new(event_wrapper)
    @channels = params['channels']
  @groups = params['groups']
end

      def to_raw
        params.to_h
      end
    end
  end
  end
end
