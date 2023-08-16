# MergeTicketingClient::Attachment

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional][readonly] |
| **remote_id** | **String** | The third-party API ID of the matching object. | [optional] |
| **file_name** | **String** | The attachment&#39;s name. It is required to include the file extension in the attachment&#39;s name. | [optional] |
| **ticket** | **String** | The ticket associated with the attachment. | [optional] |
| **file_url** | **String** | The attachment&#39;s url. It is required to include the file extension in the file&#39;s URL. | [optional] |
| **content_type** | **String** | The attachment&#39;s file format. | [optional] |
| **uploaded_by** | **String** | The user who uploaded the attachment. | [optional] |
| **remote_created_at** | **Time** | When the third party&#39;s attachment was created. | [optional] |
| **remote_was_deleted** | **Boolean** |  | [optional][readonly] |
| **modified_at** | **Time** | This is the datetime that this object was last updated by Merge | [optional][readonly] |
| **field_mappings** | [**Hash&lt;String, AnyType&gt;**](AnyType.md) |  | [optional][readonly] |
| **remote_data** | [**Array&lt;RemoteData&gt;**](RemoteData.md) |  | [optional][readonly] |

## Example

```ruby
require 'merge_ticketing_client'

instance = MergeTicketingClient::Attachment.new(
  id: 17a54124-287f-494d-965e-3c5b330c9a68,
  remote_id: 19202938,
  file_name: Screenshot.png,
  ticket: 0958cbc6-6040-430a-848e-aafacbadf4ae,
  file_url: http://alturl.com/p749b,
  content_type: jpeg,
  uploaded_by: 28b54125-287f-494d-965e-3c5b330c9a68,
  remote_created_at: 2022-11-10T00:00Z,
  remote_was_deleted: null,
  modified_at: 2021-10-16T00:00Z,
  field_mappings: {&quot;organization_defined_targets&quot;:{&quot;custom_key&quot;:&quot;custom_value&quot;},&quot;linked_account_defined_targets&quot;:{&quot;custom_key&quot;:&quot;custom_value&quot;}},
  remote_data: null
)
```

