#
# This module generate by ParamsModelsGeneration.
# MUST NOT edit it manually.
#
module SlackAppRequestHandler
  module Parameters
    module EventApi
      class DndUpdatedUser
        attr_reader :params, :event_wrapper, :type, :user, :dnd_status

        def initialize(params, event_wrapper = nil)
          @params = params
          @event_wrapper = event_wrapper && ::SlackAppRequestHandler::Parameters::EventWrapper.new(event_wrapper)
          @type = params['type']
          @user = params['user']
          @dnd_status = ::SlackAppRequestHandler::Parameters::EventApi::DndStatus.new(params['dnd_status'])
        end

        def to_raw
          params.to_h
        end
      end
    end
  end
end
