#
# This module generate by ParamsModelsGeneration.
# MUST NOT edit it manually.
#
module SlackAppRequestHandler
  module Parameters
    module EventApi
      class EmojiChangedAdd
        attr_reader :params, :event_wrapper, :event_ts, :name, :subtype, :type, :value

        def initialize(params, event_wrapper = nil)
          @params = params
          @event_wrapper = event_wrapper && ::SlackAppRequestHandler::Parameters::EventWrapper.new(event_wrapper)
          @event_ts = params['event_ts']
          @event_ts_f = params['event_ts'].to_f
          @name = params['name']
          @subtype = params['subtype']
          @type = params['type']
          @value = params['value']
        end

        def to_raw
          params.to_h
        end
      end
    end
  end
end
