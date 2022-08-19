# MergeTicketingClient::Ticket

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional][readonly] |
| **remote_id** | **String** | The third-party API ID of the matching object. | [optional] |
| **name** | **String** | The ticket&#39;s name. | [optional] |
| **assignees** | **Array&lt;String&gt;** |  | [optional] |
| **due_date** | **Time** | The ticket&#39;s due date. | [optional] |
| **status** | [**TicketStatusEnum**](TicketStatusEnum.md) | The current status of the ticket. | [optional] |
| **description** | **String** | The ticket&#39;s description. | [optional] |
| **project** | **String** |  | [optional] |
| **ticket_type** | **String** | The ticket&#39;s type. | [optional] |
| **account** | **String** |  | [optional] |
| **contact** | **String** |  | [optional] |
| **parent_ticket** | **String** |  | [optional] |
| **attachments** | **Array&lt;String&gt;** |  | [optional] |
| **tags** | **Array&lt;String&gt;** |  | [optional] |
| **remote_created_at** | **Time** | When the third party&#39;s ticket was created. | [optional] |
| **remote_updated_at** | **Time** | When the third party&#39;s ticket was updated. | [optional] |
| **remote_data** | [**Array&lt;RemoteData&gt;**](RemoteData.md) |  | [optional][readonly] |
| **remote_was_deleted** | **Boolean** |  | [optional][readonly] |

## Example

```ruby
require 'merge_ticketing_client'

instance = MergeTicketingClient::Ticket.new(
  id: 0958cbc6-6040-430a-848e-aafacbadf4ae,
  remote_id: 19202938,
  name: Please add more integrations,
  assignees: [&quot;17a54124-287f-494d-965e-3c5b330c9a68&quot;],
  due_date: 2022-10-11T00:00Z,
  status: OPEN,
  description: Can you please add more integrations? It&#39;ll make syncing data much easier!,
  project: fb8c55b6-1cb8-4b4c-9fb6-17924231619d,
  ticket_type: incident,
  account: 0958cbc6-6040-430a-848e-aafacbadf4ae,
  contact: 65c345ba-6870-4974-87ba-dd31509c367a,
  parent_ticket: 75b33d04-30d2-4f3e-be45-27838bc94342,
  attachments: [&quot;42747df1-95e7-46e2-93cc-66f1191edca5&quot;,&quot;92f972d0-2526-434b-9409-4c3b468e08f0&quot;],
  tags: [&quot;enterprise&quot;,&quot;other-tag&quot;],
  remote_created_at: 2021-11-10T00:00Z,
  remote_updated_at: 2021-12-09T00:00Z,
  remote_data: null,
  remote_was_deleted: null
)
```

