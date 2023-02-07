# MergeTicketingClient::MetaResponse

## Properties

| Name                                   | Type                                              | Description | Notes      |
| -------------------------------------- | ------------------------------------------------- | ----------- | ---------- |
| **request_schema**                     | [**Hash&lt;String, Object&gt;**](Object.md)       |             |            |
| **status**                             | [**LinkedAccountStatus**](LinkedAccountStatus.md) |             | [optional] |
| **has_conditional_params**             | **Boolean**                                       |             |            |
| **has_required_linked_account_params** | **Boolean**                                       |             |            |

## Example

```ruby
require 'merge_ticketing_client'

instance = MergeTicketingClient::MetaResponse.new(
  request_schema: null,
  status: null,
  has_conditional_params: null,
  has_required_linked_account_params: null
)
```
