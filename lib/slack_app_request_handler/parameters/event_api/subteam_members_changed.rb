#
# This module generate by ParamsModelsGeneration.
# MUST NOT edit it manually.
#
module SlackAppRequestHandler
  module Parameters
    module EventApi
      class SubteamMembersChanged
        attr_reader :params, :event_wrapper, :type, :subteam_id, :team_id, :date_previous_update, :date_update, :added_users, :added_users_count, :removed_users, :removed_users_count

        def initialize(params, event_wrapper = nil)
          @params = params
          @event_wrapper = event_wrapper && ::SlackAppRequestHandler::Parameters::EventWrapper.new(event_wrapper)
          @type = params['type']
          @subteam_id = params['subteam_id']
          @team_id = params['team_id']
          @date_previous_update = params['date_previous_update']
          @date_update = params['date_update']
          @added_users = params['added_users']
          @added_users_count = params['added_users_count']
          @removed_users = params['removed_users']
          @removed_users_count = params['removed_users_count']
        end

        def to_raw
          params.to_h
        end
      end
    end
  end
end
