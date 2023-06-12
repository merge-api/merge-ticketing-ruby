# merge_ticketing_client

MergeTicketingClient - the Ruby gem for the Merge Ticketing API

The unified API for building rich integrations with multiple Ticketing platforms.

This SDK is automatically generated by the [OpenAPI Generator](https://openapi-generator.tech) project:

- API version: 1.0
- Package version: 1.0.4
- Build package: org.openapitools.codegen.languages.RubyClientCodegen
  For more information, please visit [https://www.merge.dev/](https://www.merge.dev/)

## Installation

### Build a gem

To build the Ruby code into a gem:

```shell
gem build merge_ticketing_client.gemspec
```

Then either install the gem locally:

```shell
gem install ./merge_ticketing_client-1.0.4.gem
```

(for development, run `gem install --dev ./merge_ticketing_client-1.0.4.gem` to install the development dependencies)

or publish the gem to a gem hosting service, e.g. [RubyGems](https://rubygems.org/).

Finally add this to the Gemfile:

    gem 'merge_ticketing_client', '~> 1.0.4'

### Install from Git

If the Ruby gem is hosted at a git repository: https://github.com/merge-api/merge-ticketing-ruby, then add the following in the Gemfile:

    gem 'merge_ticketing_client', :git => 'https://github.com/merge-api/merge-ticketing-ruby.git'

### Include the Ruby code directly

Include the Ruby code directly using `-I` as follows:

```shell
ruby -Ilib script.rb
```

## Getting Started

Please follow the [installation](#installation) procedure and then run the following code:

```ruby
# Load the gem
require 'merge_ticketing_client'

# Setup authorization
MergeTicketingClient.configure do |config|
  # Configure API key authorization: tokenAuth
  config.api_key['tokenAuth'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['tokenAuth'] = 'Bearer'
end

api_instance = MergeTicketingClient::AccountDetailsApi.new
x_account_token = 'x_account_token_example' # String | Token identifying the end user.

begin
  result = api_instance.account_details_retrieve(x_account_token)
  p result
rescue MergeTicketingClient::ApiError => e
  puts "Exception when calling AccountDetailsApi->account_details_retrieve: #{e}"
end

```

## Documentation for API Endpoints

All URIs are relative to *https://api.merge.dev/api/ticketing/v1*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*MergeTicketingClient::AccountDetailsApi* | [**account_details_retrieve**](docs/AccountDetailsApi.md#account_details_retrieve) | **GET** /account-details | 
*MergeTicketingClient::AccountTokenApi* | [**account_token_retrieve**](docs/AccountTokenApi.md#account_token_retrieve) | **GET** /account-token/{public_token} | 
*MergeTicketingClient::AccountsApi* | [**accounts_list**](docs/AccountsApi.md#accounts_list) | **GET** /accounts | 
*MergeTicketingClient::AccountsApi* | [**accounts_retrieve**](docs/AccountsApi.md#accounts_retrieve) | **GET** /accounts/{id} | 
*MergeTicketingClient::AttachmentsApi* | [**attachments_create**](docs/AttachmentsApi.md#attachments_create) | **POST** /attachments | 
*MergeTicketingClient::AttachmentsApi* | [**attachments_list**](docs/AttachmentsApi.md#attachments_list) | **GET** /attachments | 
*MergeTicketingClient::AttachmentsApi* | [**attachments_meta_post_retrieve**](docs/AttachmentsApi.md#attachments_meta_post_retrieve) | **GET** /attachments/meta/post | 
*MergeTicketingClient::AttachmentsApi* | [**attachments_retrieve**](docs/AttachmentsApi.md#attachments_retrieve) | **GET** /attachments/{id} | 
*MergeTicketingClient::AvailableActionsApi* | [**available_actions_retrieve**](docs/AvailableActionsApi.md#available_actions_retrieve) | **GET** /available-actions | 
*MergeTicketingClient::CollectionsApi* | [**collections_list**](docs/CollectionsApi.md#collections_list) | **GET** /collections | 
*MergeTicketingClient::CollectionsApi* | [**collections_retrieve**](docs/CollectionsApi.md#collections_retrieve) | **GET** /collections/{id} | 
*MergeTicketingClient::CommentsApi* | [**comments_create**](docs/CommentsApi.md#comments_create) | **POST** /comments | 
*MergeTicketingClient::CommentsApi* | [**comments_list**](docs/CommentsApi.md#comments_list) | **GET** /comments | 
*MergeTicketingClient::CommentsApi* | [**comments_meta_post_retrieve**](docs/CommentsApi.md#comments_meta_post_retrieve) | **GET** /comments/meta/post | 
*MergeTicketingClient::CommentsApi* | [**comments_retrieve**](docs/CommentsApi.md#comments_retrieve) | **GET** /comments/{id} | 
*MergeTicketingClient::ContactsApi* | [**contacts_list**](docs/ContactsApi.md#contacts_list) | **GET** /contacts | 
*MergeTicketingClient::ContactsApi* | [**contacts_retrieve**](docs/ContactsApi.md#contacts_retrieve) | **GET** /contacts/{id} | 
*MergeTicketingClient::DeleteAccountApi* | [**delete_account_create**](docs/DeleteAccountApi.md#delete_account_create) | **POST** /delete-account | 
*MergeTicketingClient::ForceResyncApi* | [**sync_status_resync_create**](docs/ForceResyncApi.md#sync_status_resync_create) | **POST** /sync-status/resync | 
*MergeTicketingClient::GenerateKeyApi* | [**generate_key_create**](docs/GenerateKeyApi.md#generate_key_create) | **POST** /generate-key | 
*MergeTicketingClient::IssuesApi* | [**issues_list**](docs/IssuesApi.md#issues_list) | **GET** /issues | 
*MergeTicketingClient::IssuesApi* | [**issues_retrieve**](docs/IssuesApi.md#issues_retrieve) | **GET** /issues/{id} | 
*MergeTicketingClient::LinkTokenApi* | [**link_token_create**](docs/LinkTokenApi.md#link_token_create) | **POST** /link-token | 
*MergeTicketingClient::LinkedAccountsApi* | [**linked_accounts_list**](docs/LinkedAccountsApi.md#linked_accounts_list) | **GET** /linked-accounts | 
*MergeTicketingClient::PassthroughApi* | [**passthrough_create**](docs/PassthroughApi.md#passthrough_create) | **POST** /passthrough | 
*MergeTicketingClient::ProjectsApi* | [**projects_list**](docs/ProjectsApi.md#projects_list) | **GET** /projects | 
*MergeTicketingClient::ProjectsApi* | [**projects_retrieve**](docs/ProjectsApi.md#projects_retrieve) | **GET** /projects/{id} | 
*MergeTicketingClient::ProjectsApi* | [**projects_users_list**](docs/ProjectsApi.md#projects_users_list) | **GET** /projects/{parent_id}/users | 
*MergeTicketingClient::RegenerateKeyApi* | [**regenerate_key_create**](docs/RegenerateKeyApi.md#regenerate_key_create) | **POST** /regenerate-key | 
*MergeTicketingClient::SelectiveSyncApi* | [**selective_sync_configurations_list**](docs/SelectiveSyncApi.md#selective_sync_configurations_list) | **GET** /selective-sync/configurations | 
*MergeTicketingClient::SelectiveSyncApi* | [**selective_sync_configurations_update**](docs/SelectiveSyncApi.md#selective_sync_configurations_update) | **PUT** /selective-sync/configurations | 
*MergeTicketingClient::SelectiveSyncApi* | [**selective_sync_meta_list**](docs/SelectiveSyncApi.md#selective_sync_meta_list) | **GET** /selective-sync/meta | 
*MergeTicketingClient::SyncStatusApi* | [**sync_status_list**](docs/SyncStatusApi.md#sync_status_list) | **GET** /sync-status | 
*MergeTicketingClient::TagsApi* | [**tags_list**](docs/TagsApi.md#tags_list) | **GET** /tags | 
*MergeTicketingClient::TagsApi* | [**tags_retrieve**](docs/TagsApi.md#tags_retrieve) | **GET** /tags/{id} | 
*MergeTicketingClient::TeamsApi* | [**teams_list**](docs/TeamsApi.md#teams_list) | **GET** /teams | 
*MergeTicketingClient::TeamsApi* | [**teams_retrieve**](docs/TeamsApi.md#teams_retrieve) | **GET** /teams/{id} | 
*MergeTicketingClient::TicketsApi* | [**tickets_collaborators_list**](docs/TicketsApi.md#tickets_collaborators_list) | **GET** /tickets/{parent_id}/collaborators | 
*MergeTicketingClient::TicketsApi* | [**tickets_create**](docs/TicketsApi.md#tickets_create) | **POST** /tickets | 
*MergeTicketingClient::TicketsApi* | [**tickets_list**](docs/TicketsApi.md#tickets_list) | **GET** /tickets | 
*MergeTicketingClient::TicketsApi* | [**tickets_meta_patch_retrieve**](docs/TicketsApi.md#tickets_meta_patch_retrieve) | **GET** /tickets/meta/patch/{id} | 
*MergeTicketingClient::TicketsApi* | [**tickets_meta_post_retrieve**](docs/TicketsApi.md#tickets_meta_post_retrieve) | **GET** /tickets/meta/post | 
*MergeTicketingClient::TicketsApi* | [**tickets_partial_update**](docs/TicketsApi.md#tickets_partial_update) | **PATCH** /tickets/{id} | 
*MergeTicketingClient::TicketsApi* | [**tickets_remote_field_classes_list**](docs/TicketsApi.md#tickets_remote_field_classes_list) | **GET** /tickets/remote-field-classes | 
*MergeTicketingClient::TicketsApi* | [**tickets_retrieve**](docs/TicketsApi.md#tickets_retrieve) | **GET** /tickets/{id} | 
*MergeTicketingClient::UsersApi* | [**users_list**](docs/UsersApi.md#users_list) | **GET** /users | 
*MergeTicketingClient::UsersApi* | [**users_retrieve**](docs/UsersApi.md#users_retrieve) | **GET** /users/{id} | 
*MergeTicketingClient::WebhookReceiversApi* | [**webhook_receivers_create**](docs/WebhookReceiversApi.md#webhook_receivers_create) | **POST** /webhook-receivers | 
*MergeTicketingClient::WebhookReceiversApi* | [**webhook_receivers_list**](docs/WebhookReceiversApi.md#webhook_receivers_list) | **GET** /webhook-receivers | 


## Documentation for Models

 - [MergeTicketingClient::Account](docs/Account.md)
 - [MergeTicketingClient::AccountDetails](docs/AccountDetails.md)
 - [MergeTicketingClient::AccountDetailsAndActions](docs/AccountDetailsAndActions.md)
 - [MergeTicketingClient::AccountDetailsAndActionsIntegration](docs/AccountDetailsAndActionsIntegration.md)
 - [MergeTicketingClient::AccountDetailsAndActionsStatusEnum](docs/AccountDetailsAndActionsStatusEnum.md)
 - [MergeTicketingClient::AccountIntegration](docs/AccountIntegration.md)
 - [MergeTicketingClient::AccountToken](docs/AccountToken.md)
 - [MergeTicketingClient::Attachment](docs/Attachment.md)
 - [MergeTicketingClient::AttachmentRequest](docs/AttachmentRequest.md)
 - [MergeTicketingClient::AvailableActions](docs/AvailableActions.md)
 - [MergeTicketingClient::CategoriesEnum](docs/CategoriesEnum.md)
 - [MergeTicketingClient::CategoryEnum](docs/CategoryEnum.md)
 - [MergeTicketingClient::Collection](docs/Collection.md)
 - [MergeTicketingClient::CollectionTypeEnum](docs/CollectionTypeEnum.md)
 - [MergeTicketingClient::Comment](docs/Comment.md)
 - [MergeTicketingClient::CommentEndpointRequest](docs/CommentEndpointRequest.md)
 - [MergeTicketingClient::CommentRequest](docs/CommentRequest.md)
 - [MergeTicketingClient::CommentResponse](docs/CommentResponse.md)
 - [MergeTicketingClient::ConditionSchema](docs/ConditionSchema.md)
 - [MergeTicketingClient::ConditionTypeEnum](docs/ConditionTypeEnum.md)
 - [MergeTicketingClient::Contact](docs/Contact.md)
 - [MergeTicketingClient::DataPassthroughRequest](docs/DataPassthroughRequest.md)
 - [MergeTicketingClient::DebugModeLog](docs/DebugModeLog.md)
 - [MergeTicketingClient::DebugModelLogSummary](docs/DebugModelLogSummary.md)
 - [MergeTicketingClient::EncodingEnum](docs/EncodingEnum.md)
 - [MergeTicketingClient::EndUserDetailsRequest](docs/EndUserDetailsRequest.md)
 - [MergeTicketingClient::ErrorValidationProblem](docs/ErrorValidationProblem.md)
 - [MergeTicketingClient::FieldFormatEnum](docs/FieldFormatEnum.md)
 - [MergeTicketingClient::FieldTypeEnum](docs/FieldTypeEnum.md)
 - [MergeTicketingClient::GenerateRemoteKeyRequest](docs/GenerateRemoteKeyRequest.md)
 - [MergeTicketingClient::Issue](docs/Issue.md)
 - [MergeTicketingClient::IssueStatusEnum](docs/IssueStatusEnum.md)
 - [MergeTicketingClient::LinkToken](docs/LinkToken.md)
 - [MergeTicketingClient::LinkedAccountCondition](docs/LinkedAccountCondition.md)
 - [MergeTicketingClient::LinkedAccountConditionRequest](docs/LinkedAccountConditionRequest.md)
 - [MergeTicketingClient::LinkedAccountSelectiveSyncConfiguration](docs/LinkedAccountSelectiveSyncConfiguration.md)
 - [MergeTicketingClient::LinkedAccountSelectiveSyncConfigurationListRequest](docs/LinkedAccountSelectiveSyncConfigurationListRequest.md)
 - [MergeTicketingClient::LinkedAccountSelectiveSyncConfigurationRequest](docs/LinkedAccountSelectiveSyncConfigurationRequest.md)
 - [MergeTicketingClient::LinkedAccountStatus](docs/LinkedAccountStatus.md)
 - [MergeTicketingClient::MetaResponse](docs/MetaResponse.md)
 - [MergeTicketingClient::MethodEnum](docs/MethodEnum.md)
 - [MergeTicketingClient::ModelOperation](docs/ModelOperation.md)
 - [MergeTicketingClient::MultipartFormFieldRequest](docs/MultipartFormFieldRequest.md)
 - [MergeTicketingClient::OperatorSchema](docs/OperatorSchema.md)
 - [MergeTicketingClient::PaginatedAccountDetailsAndActionsList](docs/PaginatedAccountDetailsAndActionsList.md)
 - [MergeTicketingClient::PaginatedAccountList](docs/PaginatedAccountList.md)
 - [MergeTicketingClient::PaginatedAttachmentList](docs/PaginatedAttachmentList.md)
 - [MergeTicketingClient::PaginatedCollectionList](docs/PaginatedCollectionList.md)
 - [MergeTicketingClient::PaginatedCommentList](docs/PaginatedCommentList.md)
 - [MergeTicketingClient::PaginatedConditionSchemaList](docs/PaginatedConditionSchemaList.md)
 - [MergeTicketingClient::PaginatedContactList](docs/PaginatedContactList.md)
 - [MergeTicketingClient::PaginatedIssueList](docs/PaginatedIssueList.md)
 - [MergeTicketingClient::PaginatedProjectList](docs/PaginatedProjectList.md)
 - [MergeTicketingClient::PaginatedRemoteFieldClassList](docs/PaginatedRemoteFieldClassList.md)
 - [MergeTicketingClient::PaginatedSyncStatusList](docs/PaginatedSyncStatusList.md)
 - [MergeTicketingClient::PaginatedTagList](docs/PaginatedTagList.md)
 - [MergeTicketingClient::PaginatedTeamList](docs/PaginatedTeamList.md)
 - [MergeTicketingClient::PaginatedTicketList](docs/PaginatedTicketList.md)
 - [MergeTicketingClient::PaginatedUserList](docs/PaginatedUserList.md)
 - [MergeTicketingClient::PatchedTicketEndpointRequest](docs/PatchedTicketEndpointRequest.md)
 - [MergeTicketingClient::PatchedTicketRequest](docs/PatchedTicketRequest.md)
 - [MergeTicketingClient::PriorityEnum](docs/PriorityEnum.md)
 - [MergeTicketingClient::Project](docs/Project.md)
 - [MergeTicketingClient::RemoteData](docs/RemoteData.md)
 - [MergeTicketingClient::RemoteField](docs/RemoteField.md)
 - [MergeTicketingClient::RemoteFieldClass](docs/RemoteFieldClass.md)
 - [MergeTicketingClient::RemoteFieldClassItemSchema](docs/RemoteFieldClassItemSchema.md)
 - [MergeTicketingClient::RemoteKey](docs/RemoteKey.md)
 - [MergeTicketingClient::RemoteKeyForRegenerationRequest](docs/RemoteKeyForRegenerationRequest.md)
 - [MergeTicketingClient::RemoteResponse](docs/RemoteResponse.md)
 - [MergeTicketingClient::RequestFormatEnum](docs/RequestFormatEnum.md)
 - [MergeTicketingClient::ResponseTypeEnum](docs/ResponseTypeEnum.md)
 - [MergeTicketingClient::SelectiveSyncConfigurationsUsageEnum](docs/SelectiveSyncConfigurationsUsageEnum.md)
 - [MergeTicketingClient::SyncStatus](docs/SyncStatus.md)
 - [MergeTicketingClient::SyncStatusStatusEnum](docs/SyncStatusStatusEnum.md)
 - [MergeTicketingClient::Tag](docs/Tag.md)
 - [MergeTicketingClient::Team](docs/Team.md)
 - [MergeTicketingClient::Ticket](docs/Ticket.md)
 - [MergeTicketingClient::TicketEndpointRequest](docs/TicketEndpointRequest.md)
 - [MergeTicketingClient::TicketRequest](docs/TicketRequest.md)
 - [MergeTicketingClient::TicketResponse](docs/TicketResponse.md)
 - [MergeTicketingClient::TicketStatusEnum](docs/TicketStatusEnum.md)
 - [MergeTicketingClient::TicketingAttachmentEndpointRequest](docs/TicketingAttachmentEndpointRequest.md)
 - [MergeTicketingClient::TicketingAttachmentResponse](docs/TicketingAttachmentResponse.md)
 - [MergeTicketingClient::User](docs/User.md)
 - [MergeTicketingClient::ValidationProblemSource](docs/ValidationProblemSource.md)
 - [MergeTicketingClient::WarningValidationProblem](docs/WarningValidationProblem.md)
 - [MergeTicketingClient::WebhookReceiver](docs/WebhookReceiver.md)
 - [MergeTicketingClient::WebhookReceiverRequest](docs/WebhookReceiverRequest.md)

## Documentation for Authorization

### tokenAuth

- **Type**: API key
- **API key parameter name**: Authorization
- **Location**: HTTP header
