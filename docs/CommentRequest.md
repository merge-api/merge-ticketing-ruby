# MergeTicketingClient::CommentRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user** | **String** | The author of the Comment, if the author is a User. | [optional] |
| **contact** | **String** | The author of the Comment, if the author is a Contact. | [optional] |
| **body** | **String** | The comment&#39;s text body. | [optional] |
| **html_body** | **String** | The comment&#39;s text body formatted as html. | [optional] |
| **ticket** | **String** | The ticket associated with the comment.  | [optional] |
| **is_private** | **Boolean** | Whether or not the comment is internal. | [optional] |
| **integration_params** | [**Hash&lt;String, AnyType&gt;**](AnyType.md) |  | [optional] |
| **linked_account_params** | [**Hash&lt;String, AnyType&gt;**](AnyType.md) |  | [optional] |

## Example

```ruby
require 'merge_ticketing_client'

instance = MergeTicketingClient::CommentRequest.new(
  user: 17a54124-287f-494d-965e-3c5b330c9a68,
  contact: dde3fb16-b8eb-483d-81c4-b78100816f15,
  body: When will these integrations be done? You all should use Merge.,
  html_body: When will these integrations be done? You all should use &lt;b&gt;Merge&lt;b&gt;.,
  ticket: fb8c55b6-1cb8-4b4c-9fb6-17924231619d,
  is_private: null,
  integration_params: {&quot;unique_integration_field&quot;:&quot;unique_integration_field_value&quot;},
  linked_account_params: {&quot;unique_linked_account_field&quot;:&quot;unique_linked_account_field_value&quot;}
)
```

