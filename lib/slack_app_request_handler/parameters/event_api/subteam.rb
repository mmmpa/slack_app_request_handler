#
# This module generate by ParamsModelsGeneration.
# MUST NOT edit it manually.
#
module SlackAppRequestHandler
  module Parameters
    module EventApi
      class Subteam
        attr_reader :params, :event_wrapper, :id, :team_id, :is_usergroup, :name, :description, :handle, :is_external, :date_create, :date_update, :date_delete, :auto_type, :created_by, :updated_by, :deleted_by, :prefs, :user_count

        def initialize(params, event_wrapper = nil)
          @params = params
          @event_wrapper = event_wrapper && ::SlackAppRequestHandler::Parameters::EventWrapper.new(event_wrapper)
          @id = params['id']
          @team_id = params['team_id']
          @is_usergroup = params['is_usergroup']
          @name = params['name']
          @description = params['description']
          @handle = params['handle']
          @is_external = params['is_external']
          @date_create = params['date_create']
          @date_update = params['date_update']
          @date_delete = params['date_delete']
          @auto_type = params['auto_type']
          @created_by = params['created_by']
          @updated_by = params['updated_by']
          @deleted_by = params['deleted_by']
          @prefs = ::SlackAppRequestHandler::Parameters::EventApi::Prefs.new(params['prefs'])
          @user_count = params['user_count']
        end

        def to_raw
          params.to_h
        end
      end
    end
  end
end
