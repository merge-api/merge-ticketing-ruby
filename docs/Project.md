# MergeTicketingClient::Project

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional][readonly] |
| **remote_id** | **String** | The third-party API ID of the matching object. | [optional] |
| **name** | **String** | The project&#39;s name.  | [optional] |
| **description** | **String** | The project&#39;s description. | [optional] |
| **remote_data** | [**Array&lt;RemoteData&gt;**](RemoteData.md) |  | [optional][readonly] |
| **remote_was_deleted** | **Boolean** | Indicates whether or not this object has been deleted by third party webhooks. | [optional] |

## Example

```ruby
require 'merge_ticketing_client'

instance = MergeTicketingClient::Project.new(
  id: fb8c55b6-1cb8-4b4c-9fb6-17924231619d,
  remote_id: 19202938,
  name: Q1 Platform,
  description: For tracking all tasks related to Platform for Q1,
  remote_data: null,
  remote_was_deleted: null
)
```

