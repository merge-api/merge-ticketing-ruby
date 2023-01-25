# MergeTicketingClient::AttachmentRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **remote_id** | **String** | The third-party API ID of the matching object. | [optional] |
| **file_name** | **String** | The attachment&#39;s name. | [optional] |
| **ticket** | **String** | The ticket associated with the attachment. | [optional] |
| **file_url** | **String** | The attachment&#39;s url. | [optional] |
| **content_type** | **String** | The attachment&#39;s file format. | [optional] |
| **uploaded_by** | **String** | The user who uploaded the attachment. | [optional] |
| **remote_created_at** | **Time** | When the third party&#39;s attachment was created. | [optional] |
| **integration_params** | [**Hash&lt;String, AnyType&gt;**](AnyType.md) |  | [optional] |
| **linked_account_params** | [**Hash&lt;String, AnyType&gt;**](AnyType.md) |  | [optional] |

## Example

```ruby
require 'merge_ticketing_client'

instance = MergeTicketingClient::AttachmentRequest.new(
  remote_id: 19202938,
  file_name: Screenshot.png,
  ticket: 0958cbc6-6040-430a-848e-aafacbadf4ae,
  file_url: http://alturl.com/p749b,
  content_type: jpeg,
  uploaded_by: 28b54125-287f-494d-965e-3c5b330c9a68,
  remote_created_at: 2022-11-10T00:00Z,
  integration_params: {&quot;unique_integration_field&quot;:&quot;unique_integration_field_value&quot;},
  linked_account_params: {&quot;unique_linked_account_field&quot;:&quot;unique_linked_account_field_value&quot;}
)
```

