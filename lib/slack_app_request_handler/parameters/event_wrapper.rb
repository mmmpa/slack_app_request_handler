module SlackAppRequestHandler
  module Parameters
    class EventWrapper
      attr_reader :params, :token, :team_id, :api_app_id, :event, :channel_type,
                  :type, :event_id, :event_time, :authed_users

      def initialize(params)
        @params = params
        @token = params['token']
        @team_id = params['team_id']
        @api_app_id = params['api_app_id']
        @channel_type = params['channel_type']
        @type = params['type']
        @event_id = params['event_id']
        @event_time = params['event_time']
        @authed_users = params['authed_users']
      end

      def to_raw
        params.to_h
      end
    end
  end
end
