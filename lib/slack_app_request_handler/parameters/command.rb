module SlackAppRequestHandler
  module Parameters
    class Command
      attr_reader :params, :token, :team_id, :team_domain, :channel_id,
                  :channel_name, :user_id, :user_name, :command, :command_text, :text, :response_url,
                  :trigger_id

      def initialize(params)
        @params = params
        @token = params['token']
        @team_id = params['team_id']
        @team_domain = params['team_domain']
        @channel_id = params['channel_id']
        @channel_name = params['channel_name']
        @user_id = params['user_id']
        @user_name = params['user_name']
        @command = params['command']
        @command_text = params['command'][1..-1]
        @text = params['text']
        @response_url = params['response_url']
        @trigger_id = params['trigger_id']
      end

      def to_raw
        params.to_h
      end
    end
  end
end
