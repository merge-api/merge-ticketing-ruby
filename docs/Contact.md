# MergeTicketingClient::Contact

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional][readonly] |
| **remote_id** | **String** | The third-party API ID of the matching object. | [optional] |
| **name** | **String** | The contact&#39;s name. | [optional] |
| **email_address** | **String** | The contact&#39;s email address. | [optional] |
| **phone_number** | **String** | The contact&#39;s phone number. | [optional] |
| **details** | **String** | The contact&#39;s details. | [optional] |
| **account** | **String** | The contact&#39;s account. | [optional] |
| **remote_data** | [**Array&lt;RemoteData&gt;**](RemoteData.md) |  | [optional][readonly] |
| **remote_was_deleted** | **Boolean** | Indicates whether or not this object has been deleted by third party webhooks. | [optional][readonly] |
| **field_mappings** | [**Hash&lt;String, AnyType&gt;**](AnyType.md) |  | [optional][readonly] |

## Example

```ruby
require 'merge_ticketing_client'

instance = MergeTicketingClient::Contact.new(
  id: 17a54124-287f-494d-965e-3c5b330c9a68,
  remote_id: 19202938,
  name: Cousin Greg,
  email_address: greg@waystar-royco.com,
  phone_number: 5108890293,
  details: Executive Assistant to Tom Wambsgans,
  account: 28b54125-287f-494d-965e-3c5b330c9a68,
  remote_data: null,
  remote_was_deleted: null,
  field_mappings: {&quot;organization_defined_targets&quot;:{&quot;custom_key&quot;:&quot;custom_value&quot;},&quot;linked_account_defined_targets&quot;:{&quot;custom_key&quot;:&quot;custom_value&quot;}}
)
```

