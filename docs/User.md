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
| **remote_data** | [**Array&lt;RemoteData&gt;**](RemoteData.md) |  | [optional][readonly] |
| **remote_was_deleted** | **Boolean** | Indicates whether or not this object has been deleted by third party webhooks. | [optional][readonly] |

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
  remote_data: null,
  remote_was_deleted: null
)
```

