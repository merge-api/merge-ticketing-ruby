# MergeTicketingClient::TicketRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The ticket&#39;s name. | [optional] |
| **assignees** | **Array&lt;String&gt;** |  | [optional] |
| **creator** | **String** | The user who created this ticket. | [optional] |
| **due_date** | **Time** | The ticket&#39;s due date. | [optional] |
| **status** | [**TicketStatusEnum**](TicketStatusEnum.md) | The current status of the ticket.  * &#x60;OPEN&#x60; - OPEN * &#x60;CLOSED&#x60; - CLOSED * &#x60;IN_PROGRESS&#x60; - IN_PROGRESS * &#x60;ON_HOLD&#x60; - ON_HOLD | [optional] |
| **description** | **String** | The ticket’s description. HTML version of description is mapped if supported by the third-party platform. | [optional] |
| **collections** | **Array&lt;String&gt;** |  | [optional] |
| **ticket_type** | **String** | The ticket&#39;s type. | [optional] |
| **account** | **String** | The account associated with the ticket. | [optional] |
| **contact** | **String** | The contact associated with the ticket. | [optional] |
| **parent_ticket** | **String** | The ticket&#39;s parent ticket. | [optional] |
| **attachments** | **Array&lt;String&gt;** |  | [optional] |
| **tags** | **Array&lt;String&gt;** |  | [optional] |
| **completed_at** | **Time** | When the ticket was completed. | [optional] |
| **ticket_url** | **String** | The 3rd party url of the Ticket. | [optional] |
| **priority** | [**PriorityEnum**](PriorityEnum.md) | The priority or urgency of the Ticket.  * &#x60;URGENT&#x60; - URGENT * &#x60;HIGH&#x60; - HIGH * &#x60;NORMAL&#x60; - NORMAL * &#x60;LOW&#x60; - LOW | [optional] |
| **integration_params** | [**Hash&lt;String, AnyType&gt;**](AnyType.md) |  | [optional] |
| **linked_account_params** | [**Hash&lt;String, AnyType&gt;**](AnyType.md) |  | [optional] |
| **remote_fields** | [**Array&lt;RemoteFieldRequest&gt;**](RemoteFieldRequest.md) |  | [optional] |

## Example

```ruby
require 'merge_ticketing_client'

instance = MergeTicketingClient::TicketRequest.new(
  name: Please add more integrations,
  assignees: [&quot;17a54124-287f-494d-965e-3c5b330c9a68&quot;],
  creator: null,
  due_date: 2022-10-11T00:00Z,
  status: OPEN,
  description: Can you please add more integrations? It&#39;ll make syncing data much easier!,
  collections: [&quot;fb8c55b6-1cb8-4b4c-9fb6-17924231619d&quot;],
  ticket_type: incident,
  account: 0958cbc6-6040-430a-848e-aafacbadf4ae,
  contact: 65c345ba-6870-4974-87ba-dd31509c367a,
  parent_ticket: 75b33d04-30d2-4f3e-be45-27838bc94342,
  attachments: [&quot;42747df1-95e7-46e2-93cc-66f1191edca5&quot;,&quot;92f972d0-2526-434b-9409-4c3b468e08f0&quot;],
  tags: [&quot;enterprise&quot;,&quot;other-tag&quot;],
  completed_at: 2021-12-09T00:00Z,
  ticket_url: https://thirdpartysoftware.com/project/3/issue/1,
  priority: HIGH,
  integration_params: {&quot;unique_integration_field&quot;:&quot;unique_integration_field_value&quot;},
  linked_account_params: {&quot;unique_linked_account_field&quot;:&quot;unique_linked_account_field_value&quot;},
  remote_fields: null
)
```

