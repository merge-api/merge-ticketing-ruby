# MergeTicketingClient::LinkToken

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **link_token** | **String** |  |  |
| **integration_name** | **String** |  | [optional] |
| **magic_link_url** | **String** |  | [optional] |

## Example

```ruby
require 'merge_ticketing_client'

instance = MergeTicketingClient::LinkToken.new(
  link_token: necdP7FtdASl1fQwm62be2_dM4wBG8_GactqoUV0,
  integration_name: Lever,
  magic_link_url: https://link.merge.dev/asdfjkl12345jsndfgi2i83n
)
```

