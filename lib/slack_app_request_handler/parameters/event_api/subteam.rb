#
# This module generate by ParamsModelsGeneration.
# MUST NOT edit it manually.
#
module SlackAppRequestHandler
  module Parameters
    module EventApi
      class Subteam
        attr_reader :params, :event_wrapper, :auto_type, :created_by, :date_create, :date_delete, :date_update, :deleted_by, :description, :handle, :id, :is_external, :is_usergroup, :name, :prefs, :team_id, :updated_by, :user_count

        def initialize(params, event_wrapper = nil)
          @params = params
          @event_wrapper = event_wrapper && ::SlackAppRequestHandler::Parameters::EventWrapper.new(event_wrapper)
          @auto_type = params['auto_type']
          @created_by = params['created_by']
          @date_create = params['date_create']
          @date_delete = params['date_delete']
          @date_update = params['date_update']
          @deleted_by = params['deleted_by']
          @description = params['description']
          @handle = params['handle']
          @id = params['id']
          @is_external = params['is_external']
          @is_usergroup = params['is_usergroup']
          @name = params['name']
          @prefs = ::SlackAppRequestHandler::Parameters::EventApi::Prefs.new(params['prefs'])
          @team_id = params['team_id']
          @updated_by = params['updated_by']
          @user_count = params['user_count']
        end

        def to_raw
          params.to_h
        end
      end
    end
  end
end
