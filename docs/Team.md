# MergeTicketingClient::Team

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional][readonly] |
| **remote_id** | **String** | The third-party API ID of the matching object. | [optional] |
| **name** | **String** | The team&#39;s name. | [optional] |
| **description** | **String** | The team&#39;s description. | [optional] |
| **remote_data** | [**Array&lt;RemoteData&gt;**](RemoteData.md) |  | [optional][readonly] |
| **remote_was_deleted** | **Boolean** | Indicates whether or not this object has been deleted by third party webhooks. | [optional] |
| **field_mappings** | [**Hash&lt;String, AnyType&gt;**](AnyType.md) |  | [optional][readonly] |

## Example

```ruby
require 'merge_ticketing_client'

instance = MergeTicketingClient::Team.new(
  id: 17a54124-287f-494d-965e-3c5b330c9a68,
  remote_id: 19202938,
  name: Platform,
  description: Platform and Integrations Team,
  remote_data: null,
  remote_was_deleted: null,
  field_mappings: {&quot;organization_defined_targets&quot;:{&quot;custom_key&quot;:&quot;custom_value&quot;},&quot;linked_account_defined_targets&quot;:{&quot;custom_key&quot;:&quot;custom_value&quot;}}
)
```

