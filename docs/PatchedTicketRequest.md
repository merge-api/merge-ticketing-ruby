# MergeTicketingClient::PatchedTicketRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The ticket&#39;s name. | [optional] |
| **assignees** | **Array&lt;String&gt;** |  | [optional] |
| **creator** | **String** | The user who created this ticket. | [optional] |
| **due_date** | **Time** | The ticket&#39;s due date. | [optional] |
| **status** | [**TicketStatusEnum**](TicketStatusEnum.md) | The current status of the ticket. | [optional] |
| **description** | **String** | The ticket’s description. HTML version of description is mapped if supported by the third-party platform. | [optional] |
| **project** | **String** | The project the ticket belongs to. | [optional] |
| **collections** | **Array&lt;String&gt;** |  | [optional] |
| **ticket_type** | **String** | The ticket&#39;s type. | [optional] |
| **account** | **String** | The account associated with the ticket. | [optional] |
| **contact** | **String** | The contact associated with the ticket. | [optional] |
| **parent_ticket** | **String** | The ticket&#39;s parent ticket. | [optional] |
| **tags** | **Array&lt;String&gt;** |  | [optional] |
| **remote_created_at** | **Time** | When the third party&#39;s ticket was created. | [optional] |
| **remote_updated_at** | **Time** | When the third party&#39;s ticket was updated. | [optional] |
| **completed_at** | **Time** | When the ticket was completed. | [optional] |
| **ticket_url** | **String** | The 3rd party url of the Ticket. | [optional] |
| **priority** | [**PriorityEnum**](PriorityEnum.md) | The priority or urgency of the Ticket. | [optional] |
| **integration_params** | [**Hash&lt;String, AnyType&gt;**](AnyType.md) |  | [optional] |
| **linked_account_params** | [**Hash&lt;String, AnyType&gt;**](AnyType.md) |  | [optional] |

## Example

```ruby
require 'merge_ticketing_client'

instance = MergeTicketingClient::PatchedTicketRequest.new(
  name: Please add more integrations,
  assignees: [&quot;17a54124-287f-494d-965e-3c5b330c9a68&quot;],
  creator: null,
  due_date: 2022-10-11T00:00Z,
  status: OPEN,
  description: Can you please add more integrations? It&#39;ll make syncing data much easier!,
  project: fb8c55b6-1cb8-4b4c-9fb6-17924231619d,
  collections: [&quot;fb8c55b6-1cb8-4b4c-9fb6-17924231619d&quot;],
  ticket_type: incident,
  account: 0958cbc6-6040-430a-848e-aafacbadf4ae,
  contact: 65c345ba-6870-4974-87ba-dd31509c367a,
  parent_ticket: 75b33d04-30d2-4f3e-be45-27838bc94342,
  tags: [&quot;enterprise&quot;,&quot;other-tag&quot;],
  remote_created_at: 2021-11-10T00:00Z,
  remote_updated_at: 2021-12-09T00:00Z,
  completed_at: 2021-12-09T00:00Z,
  ticket_url: https://thirdpartysoftware.com/project/3/issue/1,
  priority: HIGH,
  integration_params: {&quot;unique_integration_field&quot;:&quot;unique_integration_field_value&quot;},
  linked_account_params: {&quot;unique_linked_account_field&quot;:&quot;unique_linked_account_field_value&quot;}
)
```

