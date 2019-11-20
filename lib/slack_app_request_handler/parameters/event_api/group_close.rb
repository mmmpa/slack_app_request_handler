#
# This module generate by ParamsModelsGeneration.
# MUST NOT edit it manually.
#
module SlackAppRequestHandler
  module Parameters
    module EventApi
      class GroupClose
        attr_reader :params, :event_wrapper, :channel, :type, :user

        def initialize(params, event_wrapper = nil)
          @params = params
          @event_wrapper = event_wrapper && ::SlackAppRequestHandler::Parameters::EventWrapper.new(event_wrapper)
          @channel = params['channel']
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
