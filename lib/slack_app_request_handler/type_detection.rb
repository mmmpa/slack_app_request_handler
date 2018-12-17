#
# This module generate by TypeDetectionGeneration.
# MUST NOT edit it manually.
#
# rubocop:disable Metrics/ModuleLength
module SlackAppRequestHandler
  module TypeDetection
    def type
      case raw_params['type']
      when 'event_callback'
        raw_params['event']['type']
      else
        raw_params['type']
      end
    end

    def app_mention?
      raw_params['event']['type'] == 'app_mention'
    end

    def app_rate_limited?
      raw_params['event']['type'] == 'app_rate_limited'
    end

    def channel_archive?
      raw_params['event']['type'] == 'channel_archive'
    end

    def channel_created?
      raw_params['event']['type'] == 'channel_created'
    end

    def channel_deleted?
      raw_params['event']['type'] == 'channel_deleted'
    end

    def channel_history_changed?
      raw_params['event']['type'] == 'channel_history_changed'
    end

    def channel_left?
      raw_params['event']['type'] == 'channel_left'
    end

    def channel_rename?
      raw_params['event']['type'] == 'channel_rename'
    end

    def channel_unarchive?
      raw_params['event']['type'] == 'channel_unarchive'
    end

    def dnd_updated?
      raw_params['event']['type'] == 'dnd_updated'
    end

    def dnd_updated_user?
      raw_params['event']['type'] == 'dnd_updated_user'
    end

    def email_domain_changed?
      raw_params['event']['type'] == 'email_domain_changed'
    end

    def emoji_changed?
      raw_params['event']['type'] == 'emoji_changed'
    end

    def file_change?
      raw_params['event']['type'] == 'file_change'
    end

    def file_comment_added?
      raw_params['event']['type'] == 'file_comment_added'
    end

    def file_comment_deleted?
      raw_params['event']['type'] == 'file_comment_deleted'
    end

    def file_comment_edited?
      raw_params['event']['type'] == 'file_comment_edited'
    end

    def file_created?
      raw_params['event']['type'] == 'file_created'
    end

    def file_deleted?
      raw_params['event']['type'] == 'file_deleted'
    end

    def file_public?
      raw_params['event']['type'] == 'file_public'
    end

    def file_shared?
      raw_params['event']['type'] == 'file_shared'
    end

    def file_unshared?
      raw_params['event']['type'] == 'file_unshared'
    end

    def group_archive?
      raw_params['event']['type'] == 'group_archive'
    end

    def group_close?
      raw_params['event']['type'] == 'group_close'
    end

    def group_deleted?
      raw_params['event']['type'] == 'group_deleted'
    end

    def group_history_changed?
      raw_params['event']['type'] == 'group_history_changed'
    end

    def group_left?
      raw_params['event']['type'] == 'group_left'
    end

    def group_open?
      raw_params['event']['type'] == 'group_open'
    end

    def group_rename?
      raw_params['event']['type'] == 'group_rename'
    end

    def group_unarchive?
      raw_params['event']['type'] == 'group_unarchive'
    end

    def im_close?
      raw_params['event']['type'] == 'im_close'
    end

    def im_created?
      raw_params['event']['type'] == 'im_created'
    end

    def im_history_changed?
      raw_params['event']['type'] == 'im_history_changed'
    end

    def im_open?
      raw_params['event']['type'] == 'im_open'
    end

    def member_joined_channel?
      raw_params['event']['type'] == 'member_joined_channel'
    end

    def member_left_channel?
      raw_params['event']['type'] == 'member_left_channel'
    end

    def message_app_home?
      raw_params['event']['type'] == 'message.app_home'
    end

    def message_channels?
      raw_params['event']['type'] == 'message.channels'
    end

    def message_groups?
      raw_params['event']['type'] == 'message.groups'
    end

    def message_im?
      raw_params['event']['type'] == 'message.im'
    end

    def message_mpim?
      raw_params['event']['type'] == 'message.mpim'
    end

    def pin_added?
      raw_params['event']['type'] == 'pin_added'
    end

    def pin_removed?
      raw_params['event']['type'] == 'pin_removed'
    end

    def reaction_added?
      raw_params['event']['type'] == 'reaction_added'
    end

    def reaction_removed?
      raw_params['event']['type'] == 'reaction_removed'
    end

    def star_added?
      raw_params['event']['type'] == 'star_added'
    end

    def star_removed?
      raw_params['event']['type'] == 'star_removed'
    end

    def subteam_created?
      raw_params['event']['type'] == 'subteam_created'
    end

    def subteam_members_changed?
      raw_params['event']['type'] == 'subteam_members_changed'
    end

    def subteam_self_added?
      raw_params['event']['type'] == 'subteam_self_added'
    end

    def subteam_self_removed?
      raw_params['event']['type'] == 'subteam_self_removed'
    end

    def subteam_updated?
      raw_params['event']['type'] == 'subteam_updated'
    end

    def team_domain_change?
      raw_params['event']['type'] == 'team_domain_change'
    end

    def team_join?
      raw_params['event']['type'] == 'team_join'
    end

    def team_rename?
      raw_params['event']['type'] == 'team_rename'
    end

    def url_verification?
      raw_params['event']['type'] == 'url_verification'
    end

    def user_change?
      raw_params['event']['type'] == 'user_change'
    end

    def app_uninstalled?
      raw_params['event']['type'] == 'event_callback' && raw_params['event']['event']['type'] == 'app_uninstalled'
    end

    def grid_migration_finished?
      raw_params['event']['type'] == 'event_callback' && raw_params['event']['event']['type'] == 'grid_migration_finished'
    end

    def grid_migration_started?
      raw_params['event']['type'] == 'event_callback' && raw_params['event']['event']['type'] == 'grid_migration_started'
    end

    def link_shared?
      raw_params['event']['type'] == 'event_callback' && raw_params['event']['event']['type'] == 'link_shared'
    end

    def message?
      raw_params['event']['type'] == 'event_callback' && raw_params['event']['event']['type'] == 'message'
    end

    def resources_added?
      raw_params['event']['type'] == 'event_callback' && raw_params['event']['event']['type'] == 'resources_added'
    end

    def resources_removed?
      raw_params['event']['type'] == 'event_callback' && raw_params['event']['event']['type'] == 'resources_removed'
    end

    def scope_denied?
      raw_params['event']['type'] == 'event_callback' && raw_params['event']['event']['type'] == 'scope_denied'
    end

    def scope_granted?
      raw_params['event']['type'] == 'event_callback' && raw_params['event']['event']['type'] == 'scope_granted'
    end

    def tokens_revoked?
      raw_params['event']['type'] == 'event_callback' && raw_params['event']['event']['type'] == 'tokens_revoked'
    end

    def user_resource_denied?
      raw_params['event']['type'] == 'event_callback' && raw_params['event']['event']['type'] == 'user_resource_denied'
    end

    def user_resource_granted?
      raw_params['event']['type'] == 'event_callback' && raw_params['event']['event']['type'] == 'user_resource_granted'
    end

    def user_resource_removed?
      raw_params['event']['type'] == 'event_callback' && raw_params['event']['event']['type'] == 'user_resource_removed'
    end
  end
end
# rubocop:enable Metrics/ModuleLength
