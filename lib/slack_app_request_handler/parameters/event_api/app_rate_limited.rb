#
# This module generate by ParamsModelsGeneration.
# MUST NOT edit it manually.
#
module SlackAppRequestHandler
  module Parameters
    module EventApi
      class AppRateLimited
        attr_reader :params, :event_wrapper, :api_app_id, :minute_rate_limited, :team_id, :token, :type

        def initialize(params, event_wrapper = nil)
          @params = params
          @event_wrapper = event_wrapper && ::SlackAppRequestHandler::Parameters::EventWrapper.new(event_wrapper)
          @api_app_id = params['api_app_id']
          @minute_rate_limited = params['minute_rate_limited']
          @team_id = params['team_id']
          @token = params['token']
          @type = params['type']
        end

        def to_raw
          params.to_h
        end
      end
    end
  end
end
