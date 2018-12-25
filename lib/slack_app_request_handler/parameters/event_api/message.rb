#
# This module generate by ParamsModelsGeneration.
# MUST NOT edit it manually.
#
module SlackAppRequestHandler
  module Parameters
    module EventApi
      class Message
        attr_reader :params, :event_wrapper, :channel, :channel_type, :event_ts, :text, :ts, :type, :user

        def initialize(params, event_wrapper = nil)
          @params = params
          @event_wrapper = event_wrapper && ::SlackAppRequestHandler::Parameters::EventWrapper.new(event_wrapper)
          @channel = ::SlackAppRequestHandler::Parameters::EventApi::Channel.new(params['channel'])
          @channel_type = params['channel_type']
          @event_ts = params['event_ts']
          @event_ts_f = params['event_ts'].to_f
          @text = params['text']
          @ts = params['ts']
          @type = params['type']
          @user = ::SlackAppRequestHandler::Parameters::EventApi::User.new(params['user'])
        end

        def to_raw
          params.to_h
        end
      end
    end
  end
end
