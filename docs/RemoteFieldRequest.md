# MergeTicketingClient::RemoteFieldRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **remote_field_class** | **String** |  |  |
| **value** | [**Hash&lt;String, AnyType&gt;**](AnyType.md) |  | [optional] |

## Example

```ruby
require 'merge_ticketing_client'

instance = MergeTicketingClient::RemoteFieldRequest.new(
  remote_field_class: b057d1d2-c204-4da8-a74c-c91d1a260614,
  value: string
)
```

