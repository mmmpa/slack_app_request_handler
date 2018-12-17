#
# This module generate by ParamsModelsGeneration.
# MUST NOT edit it manually.
#
module SlackAppRequestHandler
  module Parameters
    module EventApi
      class StarAdded
        attr_reader :params, :event_wrapper, :type, :user, :item, :event_ts

        def initialize(params, event_wrapper = nil)
          @params = params
          @event_wrapper = event_wrapper && ::SlackAppRequestHandler::Parameters::EventWrapper.new(event_wrapper)
          @type = params['type']
          @user = params['user']
          @item = ::SlackAppRequestHandler::Parameters::EventApi::StarItem.new(params['item'])
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
