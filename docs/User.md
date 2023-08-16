# MergeTicketingClient::User

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional][readonly] |
| **remote_id** | **String** | The third-party API ID of the matching object. | [optional] |
| **name** | **String** | The user&#39;s name. | [optional] |
| **email_address** | **String** | The user&#39;s email address. | [optional] |
| **is_active** | **Boolean** | Whether or not the user is active. | [optional] |
| **teams** | **Array&lt;String&gt;** |  | [optional] |
| **avatar** | **String** | The user&#39;s avatar picture. | [optional] |
| **remote_was_deleted** | **Boolean** | Indicates whether or not this object has been deleted by third party webhooks. | [optional][readonly] |
| **modified_at** | **Time** | This is the datetime that this object was last updated by Merge | [optional][readonly] |
| **field_mappings** | [**Hash&lt;String, AnyType&gt;**](AnyType.md) |  | [optional][readonly] |
| **remote_data** | [**Array&lt;RemoteData&gt;**](RemoteData.md) |  | [optional][readonly] |

## Example

```ruby
require 'merge_ticketing_client'

instance = MergeTicketingClient::User.new(
  id: 17a54124-287f-494d-965e-3c5b330c9a68,
  remote_id: 19202938,
  name: Gil Feig,
  email_address: help@merge.dev,
  is_active: true,
  teams: [&quot;28b54125-287f-494d-965e-3c5b330c9a68&quot;,&quot;17a54124-287f-494d-965e-3c5b330c9a68&quot;],
  avatar: https://merge.dev/user_profile_pic.png,
  remote_was_deleted: null,
  modified_at: 2021-10-16T00:00Z,
  field_mappings: {&quot;organization_defined_targets&quot;:{&quot;custom_key&quot;:&quot;custom_value&quot;},&quot;linked_account_defined_targets&quot;:{&quot;custom_key&quot;:&quot;custom_value&quot;}},
  remote_data: null
)
```

