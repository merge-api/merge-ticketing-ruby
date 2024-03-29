=begin
#Merge Ticketing API

#The unified API for building rich integrations with multiple Ticketing platforms.

The version of the OpenAPI document: 1.0
Contact: hello@merge.dev
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.1.1

=end

# Common files
require 'merge_ticketing_client/api_client'
require 'merge_ticketing_client/api_error'
require 'merge_ticketing_client/version'
require 'merge_ticketing_client/configuration'

# Models
require 'merge_ticketing_client/models/access_level_enum'
require 'merge_ticketing_client/models/account'
require 'merge_ticketing_client/models/account_details'
require 'merge_ticketing_client/models/account_details_and_actions'
require 'merge_ticketing_client/models/account_details_and_actions_integration'
require 'merge_ticketing_client/models/account_details_and_actions_status_enum'
require 'merge_ticketing_client/models/account_integration'
require 'merge_ticketing_client/models/account_token'
require 'merge_ticketing_client/models/async_passthrough_reciept'
require 'merge_ticketing_client/models/attachment'
require 'merge_ticketing_client/models/attachment_request'
require 'merge_ticketing_client/models/available_actions'
require 'merge_ticketing_client/models/categories_enum'
require 'merge_ticketing_client/models/category_enum'
require 'merge_ticketing_client/models/collection'
require 'merge_ticketing_client/models/collection_type_enum'
require 'merge_ticketing_client/models/comment'
require 'merge_ticketing_client/models/comment_endpoint_request'
require 'merge_ticketing_client/models/comment_request'
require 'merge_ticketing_client/models/comment_response'
require 'merge_ticketing_client/models/common_model_scopes_body_request'
require 'merge_ticketing_client/models/condition_schema'
require 'merge_ticketing_client/models/condition_type_enum'
require 'merge_ticketing_client/models/contact'
require 'merge_ticketing_client/models/data_passthrough_request'
require 'merge_ticketing_client/models/debug_mode_log'
require 'merge_ticketing_client/models/debug_model_log_summary'
require 'merge_ticketing_client/models/enabled_actions_enum'
require 'merge_ticketing_client/models/encoding_enum'
require 'merge_ticketing_client/models/end_user_details_request'
require 'merge_ticketing_client/models/error_validation_problem'
require 'merge_ticketing_client/models/field_format_enum'
require 'merge_ticketing_client/models/field_type_enum'
require 'merge_ticketing_client/models/generate_remote_key_request'
require 'merge_ticketing_client/models/issue'
require 'merge_ticketing_client/models/issue_status_enum'
require 'merge_ticketing_client/models/item_format_enum'
require 'merge_ticketing_client/models/item_schema'
require 'merge_ticketing_client/models/item_type_enum'
require 'merge_ticketing_client/models/link_token'
require 'merge_ticketing_client/models/linked_account_condition'
require 'merge_ticketing_client/models/linked_account_condition_request'
require 'merge_ticketing_client/models/linked_account_selective_sync_configuration'
require 'merge_ticketing_client/models/linked_account_selective_sync_configuration_list_request'
require 'merge_ticketing_client/models/linked_account_selective_sync_configuration_request'
require 'merge_ticketing_client/models/linked_account_status'
require 'merge_ticketing_client/models/meta_response'
require 'merge_ticketing_client/models/method_enum'
require 'merge_ticketing_client/models/model_operation'
require 'merge_ticketing_client/models/multipart_form_field_request'
require 'merge_ticketing_client/models/operator_schema'
require 'merge_ticketing_client/models/paginated_account_details_and_actions_list'
require 'merge_ticketing_client/models/paginated_account_list'
require 'merge_ticketing_client/models/paginated_attachment_list'
require 'merge_ticketing_client/models/paginated_collection_list'
require 'merge_ticketing_client/models/paginated_comment_list'
require 'merge_ticketing_client/models/paginated_condition_schema_list'
require 'merge_ticketing_client/models/paginated_contact_list'
require 'merge_ticketing_client/models/paginated_issue_list'
require 'merge_ticketing_client/models/paginated_project_list'
require 'merge_ticketing_client/models/paginated_remote_field_class_list'
require 'merge_ticketing_client/models/paginated_sync_status_list'
require 'merge_ticketing_client/models/paginated_tag_list'
require 'merge_ticketing_client/models/paginated_team_list'
require 'merge_ticketing_client/models/paginated_ticket_list'
require 'merge_ticketing_client/models/paginated_user_list'
require 'merge_ticketing_client/models/patched_ticket_endpoint_request'
require 'merge_ticketing_client/models/patched_ticket_request'
require 'merge_ticketing_client/models/priority_enum'
require 'merge_ticketing_client/models/project'
require 'merge_ticketing_client/models/remote_data'
require 'merge_ticketing_client/models/remote_field'
require 'merge_ticketing_client/models/remote_field_class'
require 'merge_ticketing_client/models/remote_field_request'
require 'merge_ticketing_client/models/remote_key'
require 'merge_ticketing_client/models/remote_key_for_regeneration_request'
require 'merge_ticketing_client/models/remote_response'
require 'merge_ticketing_client/models/request_format_enum'
require 'merge_ticketing_client/models/response_type_enum'
require 'merge_ticketing_client/models/selective_sync_configurations_usage_enum'
require 'merge_ticketing_client/models/sync_status'
require 'merge_ticketing_client/models/sync_status_status_enum'
require 'merge_ticketing_client/models/tag'
require 'merge_ticketing_client/models/team'
require 'merge_ticketing_client/models/ticket'
require 'merge_ticketing_client/models/ticket_endpoint_request'
require 'merge_ticketing_client/models/ticket_request'
require 'merge_ticketing_client/models/ticket_response'
require 'merge_ticketing_client/models/ticket_status_enum'
require 'merge_ticketing_client/models/ticketing_attachment_endpoint_request'
require 'merge_ticketing_client/models/ticketing_attachment_response'
require 'merge_ticketing_client/models/user'
require 'merge_ticketing_client/models/validation_problem_source'
require 'merge_ticketing_client/models/warning_validation_problem'
require 'merge_ticketing_client/models/webhook_receiver'
require 'merge_ticketing_client/models/webhook_receiver_request'

# APIs
require 'merge_ticketing_client/api/account_details_api'
require 'merge_ticketing_client/api/account_token_api'
require 'merge_ticketing_client/api/accounts_api'
require 'merge_ticketing_client/api/async_passthrough_api'
require 'merge_ticketing_client/api/attachments_api'
require 'merge_ticketing_client/api/available_actions_api'
require 'merge_ticketing_client/api/collections_api'
require 'merge_ticketing_client/api/comments_api'
require 'merge_ticketing_client/api/contacts_api'
require 'merge_ticketing_client/api/delete_account_api'
require 'merge_ticketing_client/api/force_resync_api'
require 'merge_ticketing_client/api/generate_key_api'
require 'merge_ticketing_client/api/issues_api'
require 'merge_ticketing_client/api/link_token_api'
require 'merge_ticketing_client/api/linked_accounts_api'
require 'merge_ticketing_client/api/passthrough_api'
require 'merge_ticketing_client/api/projects_api'
require 'merge_ticketing_client/api/regenerate_key_api'
require 'merge_ticketing_client/api/selective_sync_api'
require 'merge_ticketing_client/api/sync_status_api'
require 'merge_ticketing_client/api/tags_api'
require 'merge_ticketing_client/api/teams_api'
require 'merge_ticketing_client/api/tickets_api'
require 'merge_ticketing_client/api/users_api'
require 'merge_ticketing_client/api/webhook_receivers_api'

module MergeTicketingClient
  class << self
    # Customize default settings for the SDK using block.
    #   MergeTicketingClient.configure do |config|
    #     config.username = "xxx"
    #     config.password = "xxx"
    #   end
    # If no block given, return the default Configuration object.
    def configure
      if block_given?
        yield(Configuration.default)
      else
        Configuration.default
      end
    end
  end
end
