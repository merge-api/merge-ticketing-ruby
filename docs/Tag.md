# MergeTicketingClient::Tag

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **remote_id** | **String** | The third-party API ID of the matching object. | [optional] |
| **name** | **String** | The tag&#39;s name. | [optional] |
| **remote_data** | [**Array&lt;RemoteData&gt;**](RemoteData.md) |  | [optional][readonly] |
| **remote_was_deleted** | **Boolean** | Indicates whether or not this object has been deleted by third party webhooks. | [optional] |

## Example

```ruby
require 'merge_ticketing_client'

instance = MergeTicketingClient::Tag.new(
  remote_id: 19202938,
  name: Ticketing API,
  remote_data: null,
  remote_was_deleted: null
)
```

