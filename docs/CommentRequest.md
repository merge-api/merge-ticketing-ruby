# MergeTicketingClient::CommentRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **remote_id** | **String** | The third-party API ID of the matching object. | [optional] |
| **user** | **String** |  | [optional] |
| **contact** | **String** |  | [optional] |
| **body** | **String** | The comment&#39;s text body. | [optional] |
| **html_body** | **String** | The comment&#39;s text body formatted as html. | [optional] |
| **ticket** | **String** |  | [optional] |
| **is_private** | **Boolean** | Whether or not the comment is internal. | [optional] |
| **remote_created_at** | **Time** | When the third party&#39;s comment was created. | [optional] |

## Example

```ruby
require 'merge_ticketing_client'

instance = MergeTicketingClient::CommentRequest.new(
  remote_id: 19202938,
  user: 17a54124-287f-494d-965e-3c5b330c9a68,
  contact: dde3fb16-b8eb-483d-81c4-b78100816f15,
  body: When will these integrations be done? You all should use Merge.,
  html_body: When will these integrations be done? You all should use &lt;b&gt;Merge&lt;b&gt;.,
  ticket: fb8c55b6-1cb8-4b4c-9fb6-17924231619d,
  is_private: null,
  remote_created_at: 1990-11-10T00:00Z
)
```

