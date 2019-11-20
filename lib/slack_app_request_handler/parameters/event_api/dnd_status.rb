#
# This module generate by ParamsModelsGeneration.
# MUST NOT edit it manually.
#
module SlackAppRequestHandler
  module Parameters
    module EventApi
      class DndStatus
        attr_reader :params, :event_wrapper, :dnd_enabled, :next_dnd_end_ts, :next_dnd_start_ts

        def initialize(params, event_wrapper = nil)
          @params = params
          @event_wrapper = event_wrapper && ::SlackAppRequestHandler::Parameters::EventWrapper.new(event_wrapper)
          @dnd_enabled = params['dnd_enabled']
          @next_dnd_end_ts = params['next_dnd_end_ts']
          @next_dnd_start_ts = params['next_dnd_start_ts']
        end

        def to_raw
          params.to_h
        end
      end
    end
  end
end
