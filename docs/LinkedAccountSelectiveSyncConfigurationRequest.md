# MergeTicketingClient::LinkedAccountSelectiveSyncConfigurationRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **linked_account_conditions** | [**Array&lt;LinkedAccountConditionRequest&gt;**](LinkedAccountConditionRequest.md) | The conditions belonging to a selective sync. |  |

## Example

```ruby
require 'merge_ticketing_client'

instance = MergeTicketingClient::LinkedAccountSelectiveSyncConfigurationRequest.new(
  linked_account_conditions: null
)
```

