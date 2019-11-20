#
# This module generate by ParamsModelsGeneration.
# MUST NOT edit it manually.
#
module SlackAppRequestHandler
  module Parameters
    module EventApi
      class StarAdded
        attr_reader :params, :event_wrapper, :event_ts, :item, :type, :user

        def initialize(params, event_wrapper = nil)
          @params = params
          @event_wrapper = event_wrapper && ::SlackAppRequestHandler::Parameters::EventWrapper.new(event_wrapper)
          @event_ts = params['event_ts']
          @event_ts_f = params['event_ts'].to_f
          @item = ::SlackAppRequestHandler::Parameters::EventApi::StarItem.new(params['item'])
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
