#
# This module generate by ParamsModelsGeneration.
# MUST NOT edit it manually.
#
module SlackAppRequestHandler
  module Parameters
  module EventApi
    class ResourceItem
attr_reader :params, :event_wrapper, :resource, :scopes

def initialize(params, event_wrapper = nil)
  @params = params
  @event_wrapper = event_wrapper && ::SlackAppRequestHandler::Parameters::EventWrapper.new(event_wrapper)
    @resource = ::SlackAppRequestHandler::Parameters::EventApi::Resource.new(params['resource'])
  @scopes = params['scopes']
end

      def to_raw
        params.to_h
      end
    end
  end
  end
end
