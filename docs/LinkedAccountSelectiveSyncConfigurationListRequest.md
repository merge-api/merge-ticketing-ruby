# MergeTicketingClient::LinkedAccountSelectiveSyncConfigurationListRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **sync_configurations** | [**Array&lt;LinkedAccountSelectiveSyncConfigurationRequest&gt;**](LinkedAccountSelectiveSyncConfigurationRequest.md) | The selective syncs associated with a linked account. |  |

## Example

```ruby
require 'merge_ticketing_client'

instance = MergeTicketingClient::LinkedAccountSelectiveSyncConfigurationListRequest.new(
  sync_configurations: null
)
```

