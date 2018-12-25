#
# This module generate by ParamsModelsGeneration.
# MUST NOT edit it manually.
#
module SlackAppRequestHandler
  module Parameters
    module EventApi
      class LinkShared
        attr_reader :params, :event_wrapper, :channel, :links, :message_ts, :thread_ts, :type, :user

        def initialize(params, event_wrapper = nil)
          @params = params
          @event_wrapper = event_wrapper && ::SlackAppRequestHandler::Parameters::EventWrapper.new(event_wrapper)
          @channel = params['channel']
          @links = params['links']
          @message_ts = params['message_ts']
          @message_ts_f = params['message_ts'].to_f
          @thread_ts = params['thread_ts']
          @thread_ts_f = params['thread_ts'].to_f
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
