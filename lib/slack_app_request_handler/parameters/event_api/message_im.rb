#
# This module generate by ParamsModelsGeneration.
# MUST NOT edit it manually.
#
module SlackAppRequestHandler
  module Parameters
    module EventApi
      class MessageIm
        attr_reader :params, :event_wrapper, :channel, :channel_type, :event_ts, :text, :ts, :type, :user

        def initialize(params, event_wrapper = nil)
          @params = params
          @event_wrapper = event_wrapper && ::SlackAppRequestHandler::Parameters::EventWrapper.new(event_wrapper)
          @channel = params['channel']
          @channel_type = params['channel_type']
          @event_ts = params['event_ts']
          @event_ts_f = params['event_ts'].to_f
          @text = params['text']
          @ts = params['ts']
          @ts_f = params['ts'].to_f
          @type = params['type']
          @user = params['user']
        end

        def to_raw
          params.to_h
        end
      end
    end
  end
end
