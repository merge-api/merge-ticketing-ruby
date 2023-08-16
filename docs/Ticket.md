# MergeTicketingClient::Ticket

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional][readonly] |
| **remote_id** | **String** | The third-party API ID of the matching object. | [optional] |
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
| **remote_created_at** | **Time** | When the third party&#39;s ticket was created. | [optional] |
| **remote_updated_at** | **Time** | When the third party&#39;s ticket was updated. | [optional] |
| **completed_at** | **Time** | When the ticket was completed. | [optional] |
| **remote_was_deleted** | **Boolean** |  | [optional][readonly] |
| **ticket_url** | **String** | The 3rd party url of the Ticket. | [optional] |
| **priority** | [**PriorityEnum**](PriorityEnum.md) | The priority or urgency of the Ticket.  * &#x60;URGENT&#x60; - URGENT * &#x60;HIGH&#x60; - HIGH * &#x60;NORMAL&#x60; - NORMAL * &#x60;LOW&#x60; - LOW | [optional] |
| **modified_at** | **Time** | This is the datetime that this object was last updated by Merge | [optional][readonly] |
| **field_mappings** | [**Hash&lt;String, AnyType&gt;**](AnyType.md) |  | [optional][readonly] |
| **remote_data** | [**Array&lt;RemoteData&gt;**](RemoteData.md) |  | [optional][readonly] |
| **remote_fields** | [**Array&lt;RemoteField&gt;**](RemoteField.md) |  | [optional][readonly] |

## Example

```ruby
require 'merge_ticketing_client'

instance = MergeTicketingClient::Ticket.new(
  id: 0958cbc6-6040-430a-848e-aafacbadf4ae,
  remote_id: 19202938,
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
  remote_created_at: 2021-11-10T00:00Z,
  remote_updated_at: 2021-12-09T00:00Z,
  completed_at: 2021-12-09T00:00Z,
  remote_was_deleted: null,
  ticket_url: https://thirdpartysoftware.com/project/3/issue/1,
  priority: HIGH,
  modified_at: 2021-10-16T00:00Z,
  field_mappings: {&quot;organization_defined_targets&quot;:{&quot;custom_key&quot;:&quot;custom_value&quot;},&quot;linked_account_defined_targets&quot;:{&quot;custom_key&quot;:&quot;custom_value&quot;}},
  remote_data: null,
  remote_fields: null
)
```

