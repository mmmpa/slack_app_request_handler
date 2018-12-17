#
# This module generate by ParamsModelsGeneration.
# MUST NOT edit it manually.
#
module SlackAppRequestHandler
  module Parameters
  module EventApi
    class ReactionItem
attr_reader :params, :event_wrapper, :type, :channel, :ts

def initialize(params, event_wrapper = nil)
  @params = params
  @event_wrapper = event_wrapper && ::SlackAppRequestHandler::Parameters::EventWrapper.new(event_wrapper)
    @type = params['type']
  @channel = params['channel']
  @ts = params['ts']
  @ts_f = params['ts'].to_f
end

      def to_raw
        params.to_h
      end
    end
  end
  end
end
