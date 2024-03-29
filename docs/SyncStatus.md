# MergeTicketingClient::SyncStatus

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **model_name** | **String** |  |  |
| **model_id** | **String** |  |  |
| **last_sync_start** | **Time** |  | [optional] |
| **next_sync_start** | **Time** |  | [optional] |
| **status** | [**SyncStatusStatusEnum**](SyncStatusStatusEnum.md) |  |  |
| **is_initial_sync** | **Boolean** |  |  |
| **selective_sync_configurations_usage** | [**SelectiveSyncConfigurationsUsageEnum**](SelectiveSyncConfigurationsUsageEnum.md) |  | [optional] |

## Example

```ruby
require 'merge_ticketing_client'

instance = MergeTicketingClient::SyncStatus.new(
  model_name: Ticket,
  model_id: ticketing.Ticket,
  last_sync_start: 2021-03-30T19:44:18.695973Z,
  next_sync_start: 2021-03-30T20:44:18.662942Z,
  status: SYNCING,
  is_initial_sync: true,
  selective_sync_configurations_usage: null
)
```

