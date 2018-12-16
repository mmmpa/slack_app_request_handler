module SlackAppRequestHandler
  module TypeDetect
    TYPES = %w[
      app_mention
      app_rate_limited
      app_uninstalled
      channel_archive
      channel_created
      channel_deleted
      channel_history_changed
      channel_left
      channel_rename
      channel_unarchive
      dnd_updated
      dnd_updated_user
      email_domain_changed
      emoji_changed
      file_change
      file_comment_added
      file_comment_deleted
      file_comment_edited
      file_created
      file_deleted
      file_public
      file_shared
      file_unshared
      grid_migration_finished
      grid_migration_started
      group_archive
      group_close
      group_deleted
      group_history_changed
      group_left
      group_open
      group_rename
      group_unarchive
      im_close
      im_created
      im_history_changed
      im_open
      link_shared
      member_joined_channel
      member_left_channel
      message
      message.app_home
      message.channels
      message.groups
      message.im
      message.mpim
      pin_added
      pin_removed
      reaction_added
      reaction_removed
      resources_added
      resources_removed
      scope_denied
      scope_granted
      star_added
      star_removed
      subteam_created
      subteam_members_changed
      subteam_self_added
      subteam_self_removed
      subteam_updated
      team_domain_change
      team_join
      team_rename
      tokens_revoked
      url_verification
      user_change
      user_resource_denied
      user_resource_granted
      user_resource_removed
    ].freeze

    module App
      TYPES = %w[
        app_mention
        app_rate_limited
        app_uninstalled
      ].freeze

      def app_mention?
        event_type == 'app_mention'
      end

      def app_rate_limited?
        event_type == 'app_rate_limited'
      end

      def app_uninstalled?
        event_type == 'app_uninstalled'
      end
    end

    module Channel
      TYPES = %w[
        channel_archive
        channel_created
        channel_deleted
        channel_history_changed
        channel_left
        channel_rename
        channel_unarchive
      ].freeze

      def channel_archive?
        event_type == 'channel_archive'
      end

      def channel_created?
        event_type == 'channel_created'
      end

      def channel_deleted?
        event_type == 'channel_deleted'
      end

      def channel_history_changed?
        event_type == 'channel_history_changed'
      end

      def channel_left?
        event_type == 'channel_left'
      end

      def channel_rename?
        event_type == 'channel_rename'
      end

      def channel_unarchive?
        event_type == 'channel_unarchive'
      end
    end

    module Dnd
      TYPES = %w[
        dnd_updated
        dnd_updated_user
      ].freeze

      def dnd_updated?
        event_type == 'dnd_updated'
      end

      def dnd_updated_user?
        event_type == 'dnd_updated_user'
      end
    end

    module Emoji
      TYPES = %w[
        email_domain_changed
        emoji_changed
      ].freeze

      def email_domain_changed?
        event_type == 'email_domain_changed'
      end

      def emoji_changed?
        event_type == 'emoji_changed'
      end
    end

    module File
      TYPES = %w[
        file_change
        file_comment_added
        file_comment_deleted
        file_comment_edited
        file_created
        file_deleted
        file_public
        file_shared
        file_unshared
      ].freeze

      {
        "type": "file_change",
        "file_id": "F2147483862",
        "file": {
          "id": "F2147483862"
        }
      }
      def file_change?
        event_type == 'file_change'
      end

      def file_comment_added?
        event_type == 'file_comment_added'
      end

      def file_comment_deleted?
        event_type == 'file_comment_deleted'
      end

      def file_comment_edited?
        event_type == 'file_comment_edited'
      end

      def file_created?
        event_type == 'file_created'
      end

      def file_deleted?
        event_type == 'file_deleted'
      end

      def file_public?
        event_type == 'file_public'
      end

      def file_shared?
        event_type == 'file_shared'
      end

      def file_unshared?
        event_type == 'file_unshared'
      end
    end

    module GridMigration
      TYPES = %w[
        grid_migration_finished
        grid_migration_started
      ].freeze

      def grid_migration_finished?
        event_type == 'grid_migration_finished'
      end

      def grid_migration_started?
        event_type == 'grid_migration_started'
      end
    end

    module Group
      TYPES = %w[
        group_archive
        group_close
        group_deleted
        group_history_changed
        group_left
        group_open
        group_rename
        group_unarchive
      ].freeze

      def group_archive?
        event_type == 'group_archive'
      end

      def group_close?
        event_type == 'group_close'
      end

      def group_deleted?
        event_type == 'group_deleted'
      end

      def group_history_changed?
        event_type == 'group_history_changed'
      end

      def group_left?
        event_type == 'group_left'
      end

      def group_open?
        event_type == 'group_open'
      end

      def group_rename?
        event_type == 'group_rename'
      end

      def group_unarchive?
        event_type == 'group_unarchive'
      end
    end

    module Im
      TYPES = %w[
        im_close
        im_created
        im_history_changed
        im_open
      ].freeze

      def im_close?
        event_type == 'im_close'
      end

      def im_created?
        event_type == 'im_created'
      end

      def im_history_changed?
        event_type == 'im_history_changed'
      end

      def im_open?
        event_type == 'im_open'
      end
    end

    module Link
      TYPES = %w[
        link_shared
      ].freeze

      def link_shared?
        event_type == 'link_shared'
      end
    end

    module Member
      TYPES = %w[
        member_joined_channel
        member_left_channel
      ].freeze

      def member_joined_channel?
        event_type == 'member_joined_channel'
      end

      def member_left_channel?
        event_type == 'member_left_channel'
      end
    end

    module Message
      TYPES = %w[
        message
        message.app_home
        message.channels
        message.groups
        message.im
        message.mpim
      ].freeze

      def message?
        event_type == 'message'
      end

      def message_app_home?
        event_type == 'message.app_home'
      end

      def message_channels?
        event_type == 'message.channels'
      end

      def message_groups?
        event_type == 'message.groups'
      end

      def message_im?
        event_type == 'message.im'
      end

      def message_mpim?
        event_type == 'message.mpim'
      end
    end

    module Pin
      TYPES = %w[
        pin_added
        pin_removed
      ].freeze

      def pin_added?
        event_type == 'pin_added'
      end

      def pin_removed?
        event_type == 'pin_removed'
      end
    end

    module Reaction
      TYPES = %w[
        reaction_added
        reaction_removed
      ].freeze

      def reaction_added?
        event_type == 'reaction_added'
      end

      def reaction_removed?
        event_type == 'reaction_removed'
      end
    end

    module Resource
      TYPES = %w[
        resources_added
        resources_removed
      ].freeze

      def resources_added?
        event_type == 'resources_added'
      end

      def resources_removed?
        event_type == 'resources_removed'
      end
    end

    module Scope
      TYPES = %w[
        scope_denied
        scope_granted
      ].freeze

      def scope_denied?
        event_type == 'scope_denied'
      end

      def scope_granted?
        event_type == 'scope_granted'
      end
    end

    module Star
      TYPES = %w[
        star_added
        star_removed
      ].freeze

      def star_added?
        event_type == 'star_added'
      end

      def star_removed?
        event_type == 'star_removed'
      end
    end

    module Subteam
      TYPES = %w[
        subteam_created
        subteam_members_changed
        subteam_self_added
        subteam_self_removed
        subteam_updated
      ].freeze

      def subteam_created?
        event_type == 'subteam_created'
      end

      def subteam_members_changed?
        event_type == 'subteam_members_changed'
      end

      def subteam_self_added?
        event_type == 'subteam_self_added'
      end

      def subteam_self_removed?
        event_type == 'subteam_self_removed'
      end

      def subteam_updated?
        event_type == 'subteam_updated'
      end
    end

    module Team
      TYPES = %w[
        team_domain_change
        team_join
        team_rename
      ].freeze

      def team_domain_change?
        event_type == 'team_domain_change'
      end

      def team_join?
        event_type == 'team_join'
      end

      def team_rename?
        event_type == 'team_rename'
      end
    end

    module Tokens
      TYPES = %w[
        tokens_revoked
      ].freeze

      def tokens_revoked?
        event_type == 'tokens_revoked'
      end
    end

    module UrlVerification
      TYPES = %w[
        url_verification
      ].freeze

      def url_verification?
        event_type == 'url_verification'
      end
    end

    module User
      TYPES = %w[
        user_change
        user_resource_denied
        user_resource_granted
        user_resource_removed
      ].freeze

      def user_change?
        event_type == 'user_change'
      end

      def user_resource_denied?
        event_type == 'user_resource_denied'
      end

      def user_resource_granted?
        event_type == 'user_resource_granted'
      end

      def user_resource_removed?
        event_type == 'user_resource_removed'
      end
    end

    include App
    include Channel
    include Dnd
    include Emoji
    include File
    include GridMigration
    include Group
    include Im
    include Link
    include Member
    include Message
    include Pin
    include Reaction
    include Resource
    include Scope
    include Star
    include Subteam
    include Team
    include Tokens
    include UrlVerification
    include User
  end
end
