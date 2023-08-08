# MergeTicketingClient::ItemSchema

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **item_type** | [**ItemTypeEnum**](ItemTypeEnum.md) |  | [optional] |
| **item_format** | [**ItemFormatEnum**](ItemFormatEnum.md) |  | [optional] |
| **item_choices** | **Array&lt;String&gt;** |  | [optional] |

## Example

```ruby
require 'merge_ticketing_client'

instance = MergeTicketingClient::ItemSchema.new(
  item_type: null,
  item_format: null,
  item_choices: null
)
```

