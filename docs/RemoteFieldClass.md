# MergeTicketingClient::RemoteFieldClass

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **display_name** | **String** |  | [optional] |
| **remote_key_name** | **String** |  | [optional] |
| **description** | **String** |  | [optional] |
| **is_required** | **Boolean** |  | [optional] |
| **field_type** | [**FieldTypeEnum**](FieldTypeEnum.md) |  | [optional][readonly] |
| **field_format** | [**FieldFormatEnum**](FieldFormatEnum.md) |  | [optional][readonly] |
| **field_choices** | **Array&lt;String&gt;** |  | [optional][readonly] |
| **item_schema** | [**RemoteFieldClassItemSchema**](RemoteFieldClassItemSchema.md) |  | [optional] |
| **is_custom** | **Boolean** |  | [optional] |
| **id** | **String** |  | [optional][readonly] |
| **remote_fields** | [**Array&lt;RemoteField&gt;**](RemoteField.md) |  | [optional][readonly] |

## Example

```ruby
require 'merge_ticketing_client'

instance = MergeTicketingClient::RemoteFieldClass.new(
  display_name: null,
  remote_key_name: null,
  description: null,
  is_required: null,
  field_type: null,
  field_format: null,
  field_choices: null,
  item_schema: null,
  is_custom: null,
  id: null,
  remote_fields: null
)
```

