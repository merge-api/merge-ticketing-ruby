# MergeTicketingClient::Comment

## Properties

| Name                   | Type                                         | Description                                            | Notes                |
| ---------------------- | -------------------------------------------- | ------------------------------------------------------ | -------------------- |
| **id**                 | **String**                                   |                                                        | [optional][readonly] |
| **remote_id**          | **String**                                   | The third-party API ID of the matching object.         | [optional]           |
| **user**               | **String**                                   | The author of the Comment, if the author is a User.    | [optional]           |
| **contact**            | **String**                                   | The author of the Comment, if the author is a Contact. | [optional]           |
| **body**               | **String**                                   | The comment&#39;s text body.                           | [optional]           |
| **html_body**          | **String**                                   | The comment&#39;s text body formatted as html.         | [optional]           |
| **ticket**             | **String**                                   | The ticket associated with the comment.                | [optional]           |
| **is_private**         | **Boolean**                                  | Whether or not the comment is internal.                | [optional]           |
| **remote_created_at**  | **Time**                                     | When the third party&#39;s comment was created.        | [optional]           |
| **remote_data**        | [**Array&lt;RemoteData&gt;**](RemoteData.md) |                                                        | [optional][readonly] |
| **remote_was_deleted** | **Boolean**                                  |                                                        | [optional][readonly] |
| **field_mappings**     | [**Hash&lt;String, Object&gt;**](Object.md)  |                                                        | [optional][readonly] |

## Example

```ruby
require 'merge_ticketing_client'

instance = MergeTicketingClient::Comment.new(
  id: 0958cbc6-6040-430a-848e-aafacbadf4ae,
  remote_id: 19202938,
  user: 17a54124-287f-494d-965e-3c5b330c9a68,
  contact: dde3fb16-b8eb-483d-81c4-b78100816f15,
  body: When will these integrations be done? You all should use Merge.,
  html_body: When will these integrations be done? You all should use &lt;b&gt;Merge&lt;b&gt;.,
  ticket: fb8c55b6-1cb8-4b4c-9fb6-17924231619d,
  is_private: null,
  remote_created_at: 1990-11-10T00:00Z,
  remote_data: null,
  remote_was_deleted: null,
  field_mappings: {&quot;organization_defined_targets&quot;:{&quot;custom_key&quot;:&quot;custom_value&quot;},&quot;linked_account_defined_targets&quot;:{&quot;custom_key&quot;:&quot;custom_value&quot;}}
)
```
