#
# This module generate by ParamsModelsGeneration.
# MUST NOT edit it manually.
#
module SlackAppRequestHandler
  module Parameters
  module EventApi
    class AppUninstalled
attr_reader :params, :event_wrapper, :token, :team_id, :api_app_id, :event, :type, :event_id, :event_time

def initialize(params, event_wrapper = nil)
  @params = params
  @event_wrapper = event_wrapper && ::SlackAppRequestHandler::Parameters::EventWrapper.new(event_wrapper)
    @token = params['token']
  @team_id = params['team_id']
  @api_app_id = params['api_app_id']
  @event = ::SlackAppRequestHandler::Parameters::EventApi::AppUninstalledEvent.new(params['event'])
  @type = params['type']
  @event_id = params['event_id']
  @event_time = params['event_time']
end

      def to_raw
        params.to_h
      end
    end
  end
  end
end
