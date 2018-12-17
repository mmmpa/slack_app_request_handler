#
# This module generate by ParamsModelsGeneration.
# MUST NOT edit it manually.
#
module SlackAppRequestHandler
  module Parameters
    module EventApi
      class LinkSharedEvent
        attr_reader :params, :event_wrapper, :type, :channel, :user, :message_ts, :thread_ts, :links

        def initialize(params, event_wrapper = nil)
          @params = params
          @event_wrapper = event_wrapper && ::SlackAppRequestHandler::Parameters::EventWrapper.new(event_wrapper)
          @type = params['type']
          @channel = params['channel']
          @user = params['user']
          @message_ts = params['message_ts']
          @message_ts_f = params['message_ts'].to_f
          @thread_ts = params['thread_ts']
          @thread_ts_f = params['thread_ts'].to_f
          @links = params['links'].map { |c| ::SlackAppRequestHandler::Parameters::EventApi::Link.new(c) }
        end

        def to_raw
          params.to_h
        end
      end
    end
  end
end
