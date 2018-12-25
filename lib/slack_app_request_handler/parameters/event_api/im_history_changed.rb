#
# This module generate by ParamsModelsGeneration.
# MUST NOT edit it manually.
#
module SlackAppRequestHandler
  module Parameters
    module EventApi
      class ImHistoryChanged
        attr_reader :params, :event_wrapper, :event_ts, :latest, :ts, :type

        def initialize(params, event_wrapper = nil)
          @params = params
          @event_wrapper = event_wrapper && ::SlackAppRequestHandler::Parameters::EventWrapper.new(event_wrapper)
          @event_ts = params['event_ts']
          @event_ts_f = params['event_ts'].to_f
          @latest = params['latest']
          @latest_f = params['latest'].to_f
          @ts = params['ts']
          @ts_f = params['ts'].to_f
          @type = params['type']
        end

        def to_raw
          params.to_h
        end
      end
    end
  end
end
