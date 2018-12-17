#
# This module generate by ParamsModelsGeneration.
# MUST NOT edit it manually.
#
module SlackAppRequestHandler
  module Parameters
  module EventApi
    class UserResourceGrantedEvent
attr_reader :params, :event_wrapper, :type, :user, :scopes, :trigger_id

def initialize(params, event_wrapper = nil)
  @params = params
  @event_wrapper = event_wrapper && ::SlackAppRequestHandler::Parameters::EventWrapper.new(event_wrapper)
    @type = params['type']
  @user = params['user']
  @scopes = params['scopes']
  @trigger_id = params['trigger_id']
end

      def to_raw
        params.to_h
      end
    end
  end
  end
end
