#
# This module generate by ParamsModelsGeneration.
# MUST NOT edit it manually.
#
module SlackAppRequestHandler
  module Parameters
  module EventApi
    class MessageEvent
attr_reader :params, :event_wrapper, :type, :user, :text, :ts, :channel, :event_ts, :channel_type

def initialize(params, event_wrapper = nil)
  @params = params
  @event_wrapper = event_wrapper && ::SlackAppRequestHandler::Parameters::EventWrapper.new(event_wrapper)
    @type = params['type']
  @user = params['user']
  @text = params['text']
  @ts = params['ts']
  @ts_f = params['ts'].to_f
  @channel = params['channel']
  @event_ts = params['event_ts']
  @event_ts_f = params['event_ts'].to_f
  @channel_type = params['channel_type']
end

      def to_raw
        params.to_h
      end
    end
  end
  end
end
