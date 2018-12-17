#
# This module generate by ParamsModelsGeneration.
# MUST NOT edit it manually.
#
module SlackAppRequestHandler
  module Parameters
  module EventApi
    class SubteamSelfAdded
attr_reader :params, :event_wrapper, :type, :subteam_id

def initialize(params, event_wrapper = nil)
  @params = params
  @event_wrapper = event_wrapper && ::SlackAppRequestHandler::Parameters::EventWrapper.new(event_wrapper)
    @type = params['type']
  @subteam_id = params['subteam_id']
end

      def to_raw
        params.to_h
      end
    end
  end
  end
end
