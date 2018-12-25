#
# This module generate by ParamsModelsGeneration.
# MUST NOT edit it manually.
#
module SlackAppRequestHandler
  module Parameters
    module EventApi
      class EmailDomainChanged
        attr_reader :params, :event_wrapper, :email_domain, :event_ts, :type

        def initialize(params, event_wrapper = nil)
          @params = params
          @event_wrapper = event_wrapper && ::SlackAppRequestHandler::Parameters::EventWrapper.new(event_wrapper)
          @email_domain = params['email_domain']
          @event_ts = params['event_ts']
          @event_ts_f = params['event_ts'].to_f
          @type = params['type']
        end

        def to_raw
          params.to_h
        end
      end
    end
  end
end
