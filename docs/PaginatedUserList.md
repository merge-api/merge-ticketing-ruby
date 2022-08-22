# MergeTicketingClient::PaginatedUserList

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_next** | **String** |  | [optional] |
| **previous** | **String** |  | [optional] |
| **results** | [**Array&lt;User&gt;**](User.md) |  | [optional] |

## Example

```ruby
require 'merge_ticketing_client'

instance = MergeTicketingClient::PaginatedUserList.new(
  _next: cD0yMDIxLTAxLTA2KzAzJTNBMjQlM0E1My40MzQzMjYlMkIwMCUzQTAw,
  previous: cj1sZXdwd2VycWVtY29zZnNkc2NzUWxNMEUxTXk0ME16UXpNallsTWtJ,
  results: null
)
```

