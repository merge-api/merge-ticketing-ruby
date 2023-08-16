# MergeTicketingClient::Collection

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional][readonly] |
| **remote_id** | **String** | The third-party API ID of the matching object. | [optional] |
| **name** | **String** | The collection&#39;s name. | [optional] |
| **description** | **String** | The collection&#39;s description. | [optional] |
| **collection_type** | [**CollectionTypeEnum**](CollectionTypeEnum.md) | The collection&#39;s type.  * &#x60;LIST&#x60; - LIST * &#x60;PROJECT&#x60; - PROJECT | [optional] |
| **parent_collection** | **String** | The parent collection for this collection. | [optional] |
| **remote_was_deleted** | **Boolean** | Indicates whether or not this object has been deleted by third party webhooks. | [optional] |
| **access_level** | [**AccessLevelEnum**](AccessLevelEnum.md) | The level of access a User has to the Collection and its sub-objects.  * &#x60;PRIVATE&#x60; - PRIVATE * &#x60;COMPANY&#x60; - COMPANY * &#x60;PUBLIC&#x60; - PUBLIC | [optional] |
| **modified_at** | **Time** | This is the datetime that this object was last updated by Merge | [optional][readonly] |
| **field_mappings** | [**Hash&lt;String, AnyType&gt;**](AnyType.md) |  | [optional][readonly] |
| **remote_data** | [**Array&lt;RemoteData&gt;**](RemoteData.md) |  | [optional][readonly] |

## Example

```ruby
require 'merge_ticketing_client'

instance = MergeTicketingClient::Collection.new(
  id: fb8c55b6-1cb8-4b4c-9fb6-17924231619d,
  remote_id: 19202938,
  name: Q1 Platform,
  description: For tracking all tasks related to Platform for Q1,
  collection_type: LIST,
  parent_collection: 25782302-5be1-4d78-8f46-2a5db72204ef,
  remote_was_deleted: null,
  access_level: PUBLIC,
  modified_at: 2021-10-16T00:00Z,
  field_mappings: {&quot;organization_defined_targets&quot;:{&quot;custom_key&quot;:&quot;custom_value&quot;},&quot;linked_account_defined_targets&quot;:{&quot;custom_key&quot;:&quot;custom_value&quot;}},
  remote_data: null
)
```

