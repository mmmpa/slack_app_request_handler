#
# This module generate by ParamsModelsGeneration.
# MUST NOT edit it manually.
#
module SlackAppRequestHandler
  module Parameters
  module EventApi
    class PinRemoved
attr_reader :params, :event_wrapper, :type, :user, :channel_id, :pin_item, :has_pins, :event_ts

def initialize(params, event_wrapper = nil)
  @params = params
  @event_wrapper = event_wrapper && ::SlackAppRequestHandler::Parameters::EventWrapper.new(event_wrapper)
    @type = params['type']
  @user = params['user']
  @channel_id = params['channel_id']
  @pin_item = ::SlackAppRequestHandler::Parameters::EventApi::PinItem.new(params['pin_item'])
  @has_pins = params['has_pins']
  @event_ts = params['event_ts']
  @event_ts_f = params['event_ts'].to_f
end

      def to_raw
        params.to_h
      end
    end
  end
  end
end
