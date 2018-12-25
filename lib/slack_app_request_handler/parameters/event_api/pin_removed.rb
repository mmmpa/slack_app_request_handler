#
# This module generate by ParamsModelsGeneration.
# MUST NOT edit it manually.
#
module SlackAppRequestHandler
  module Parameters
    module EventApi
      class PinRemoved
        attr_reader :params, :event_wrapper, :channel_id, :event_ts, :has_pins, :item, :type, :user

        def initialize(params, event_wrapper = nil)
          @params = params
          @event_wrapper = event_wrapper && ::SlackAppRequestHandler::Parameters::EventWrapper.new(event_wrapper)
          @channel_id = params['channel_id']
          @event_ts = params['event_ts']
          @event_ts_f = params['event_ts'].to_f
          @has_pins = params['has_pins']
          @item = params['item']
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
