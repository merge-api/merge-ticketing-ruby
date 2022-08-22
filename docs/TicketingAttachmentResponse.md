# MergeTicketingClient::TicketingAttachmentResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **model** | [**Attachment**](Attachment.md) |  |  |
| **warnings** | [**Array&lt;WarningValidationProblem&gt;**](WarningValidationProblem.md) |  |  |
| **errors** | [**Array&lt;ErrorValidationProblem&gt;**](ErrorValidationProblem.md) |  |  |
| **logs** | [**Array&lt;DebugModeLog&gt;**](DebugModeLog.md) |  | [optional] |

## Example

```ruby
require 'merge_ticketing_client'

instance = MergeTicketingClient::TicketingAttachmentResponse.new(
  model: null,
  warnings: null,
  errors: null,
  logs: null
)
```

