# MergeTicketingClient::TicketsApi

All URIs are relative to *https://api.merge.dev/api/ticketing/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**tickets_collaborators_list**](TicketsApi.md#tickets_collaborators_list) | **GET** /tickets/{parent_id}/collaborators |  |
| [**tickets_create**](TicketsApi.md#tickets_create) | **POST** /tickets |  |
| [**tickets_list**](TicketsApi.md#tickets_list) | **GET** /tickets |  |
| [**tickets_meta_patch_retrieve**](TicketsApi.md#tickets_meta_patch_retrieve) | **GET** /tickets/meta/patch/{id} |  |
| [**tickets_meta_post_retrieve**](TicketsApi.md#tickets_meta_post_retrieve) | **GET** /tickets/meta/post |  |
| [**tickets_partial_update**](TicketsApi.md#tickets_partial_update) | **PATCH** /tickets/{id} |  |
| [**tickets_retrieve**](TicketsApi.md#tickets_retrieve) | **GET** /tickets/{id} |  |


## tickets_collaborators_list

> <PaginatedUserList> tickets_collaborators_list(x_account_token, parent_id, opts)



Returns a list of `User` objects.

### Examples

```ruby
require 'time'
require 'merge_ticketing_client'
# setup authorization
MergeTicketingClient.configure do |config|
  # Configure API key authorization: tokenAuth
  config.api_key['tokenAuth'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['tokenAuth'] = 'Bearer'
end

api_instance = MergeTicketingClient::TicketsApi.new
x_account_token = 'x_account_token_example' # String | Token identifying the end user.
parent_id = TODO # String | 
opts = {
  cursor: 'cD0yMDIxLTAxLTA2KzAzJTNBMjQlM0E1My40MzQzMjYlMkIwMCUzQTAw', # String | The pagination cursor value.
  expand: 'teams', # String | Which relations should be returned in expanded form. Multiple relation names should be comma separated without spaces.
  include_deleted_data: true, # Boolean | Whether to include data that was marked as deleted by third party webhooks.
  include_remote_data: true, # Boolean | Whether to include the original data Merge fetched from the third-party to produce these models.
  page_size: 56 # Integer | Number of results to return per page.
}

begin
  
  result = api_instance.tickets_collaborators_list(x_account_token, parent_id, opts)
  p result
rescue MergeTicketingClient::ApiError => e
  puts "Error when calling TicketsApi->tickets_collaborators_list: #{e}"
end
```

#### Using the tickets_collaborators_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaginatedUserList>, Integer, Hash)> tickets_collaborators_list_with_http_info(x_account_token, parent_id, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.tickets_collaborators_list_with_http_info(x_account_token, parent_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaginatedUserList>
rescue MergeTicketingClient::ApiError => e
  puts "Error when calling TicketsApi->tickets_collaborators_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_account_token** | **String** | Token identifying the end user. |  |
| **parent_id** | [**String**](.md) |  |  |
| **cursor** | **String** | The pagination cursor value. | [optional] |
| **expand** | **String** | Which relations should be returned in expanded form. Multiple relation names should be comma separated without spaces. | [optional] |
| **include_deleted_data** | **Boolean** | Whether to include data that was marked as deleted by third party webhooks. | [optional] |
| **include_remote_data** | **Boolean** | Whether to include the original data Merge fetched from the third-party to produce these models. | [optional] |
| **page_size** | **Integer** | Number of results to return per page. | [optional] |

### Return type

[**PaginatedUserList**](PaginatedUserList.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## tickets_create

> <TicketResponse> tickets_create(x_account_token, ticket_endpoint_request, opts)



Creates a `Ticket` object with the given values.

### Examples

```ruby
require 'time'
require 'merge_ticketing_client'
# setup authorization
MergeTicketingClient.configure do |config|
  # Configure API key authorization: tokenAuth
  config.api_key['tokenAuth'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['tokenAuth'] = 'Bearer'
end

api_instance = MergeTicketingClient::TicketsApi.new
x_account_token = 'x_account_token_example' # String | Token identifying the end user.
ticket_endpoint_request = MergeTicketingClient::TicketEndpointRequest.new({model: MergeTicketingClient::TicketRequest.new}) # TicketEndpointRequest | 
opts = {
  is_debug_mode: true, # Boolean | Whether to include debug fields (such as log file links) in the response.
  run_async: true # Boolean | Whether or not third-party updates should be run asynchronously.
}

begin
  
  result = api_instance.tickets_create(x_account_token, ticket_endpoint_request, opts)
  p result
rescue MergeTicketingClient::ApiError => e
  puts "Error when calling TicketsApi->tickets_create: #{e}"
end
```

#### Using the tickets_create_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TicketResponse>, Integer, Hash)> tickets_create_with_http_info(x_account_token, ticket_endpoint_request, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.tickets_create_with_http_info(x_account_token, ticket_endpoint_request, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TicketResponse>
rescue MergeTicketingClient::ApiError => e
  puts "Error when calling TicketsApi->tickets_create_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_account_token** | **String** | Token identifying the end user. |  |
| **ticket_endpoint_request** | [**TicketEndpointRequest**](TicketEndpointRequest.md) |  |  |
| **is_debug_mode** | **Boolean** | Whether to include debug fields (such as log file links) in the response. | [optional] |
| **run_async** | **Boolean** | Whether or not third-party updates should be run asynchronously. | [optional] |

### Return type

[**TicketResponse**](TicketResponse.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
- **Accept**: application/json


## tickets_list

> <PaginatedTicketList> tickets_list(x_account_token, opts)



Returns a list of `Ticket` objects.

### Examples

```ruby
require 'time'
require 'merge_ticketing_client'
# setup authorization
MergeTicketingClient.configure do |config|
  # Configure API key authorization: tokenAuth
  config.api_key['tokenAuth'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['tokenAuth'] = 'Bearer'
end

api_instance = MergeTicketingClient::TicketsApi.new
x_account_token = 'x_account_token_example' # String | Token identifying the end user.
opts = {
  account_id: 'account_id_example', # String | If provided, will only return tickets for this account.
  assignee_ids: 'assignee_ids_example', # String | If provided, will only return tickets assigned to the assignee_ids; multiple assignee_ids can be separated by commas.
  collection_ids: 'collection_ids_example', # String | If provided, will only return tickets assigned to the collection_ids; multiple collection_ids can be separated by commas.
  completed_after: Time.parse('2013-10-20T19:20:30+01:00'), # Time | If provided, will only return tickets completed after this datetime.
  completed_before: Time.parse('2013-10-20T19:20:30+01:00'), # Time | If provided, will only return tickets completed before this datetime.
  contact_id: 'contact_id_example', # String | If provided, will only return tickets for this contact.
  created_after: Time.parse('2013-10-20T19:20:30+01:00'), # Time | If provided, will only return objects created after this datetime.
  created_before: Time.parse('2013-10-20T19:20:30+01:00'), # Time | If provided, will only return objects created before this datetime.
  cursor: 'cD0yMDIxLTAxLTA2KzAzJTNBMjQlM0E1My40MzQzMjYlMkIwMCUzQTAw', # String | The pagination cursor value.
  due_after: Time.parse('2013-10-20T19:20:30+01:00'), # Time | If provided, will only return tickets due after this datetime.
  due_before: Time.parse('2013-10-20T19:20:30+01:00'), # Time | If provided, will only return tickets due before this datetime.
  expand: 'account', # String | Which relations should be returned in expanded form. Multiple relation names should be comma separated without spaces.
  include_deleted_data: true, # Boolean | Whether to include data that was marked as deleted by third party webhooks.
  include_remote_data: true, # Boolean | Whether to include the original data Merge fetched from the third-party to produce these models.
  modified_after: Time.parse('2013-10-20T19:20:30+01:00'), # Time | If provided, will only return objects modified after this datetime.
  modified_before: Time.parse('2013-10-20T19:20:30+01:00'), # Time | If provided, will only return objects modified before this datetime.
  page_size: 56, # Integer | Number of results to return per page.
  parent_ticket_id: 'parent_ticket_id_example', # String | If provided, will only return sub tickets of the parent_ticket_id.
  priority: 'HIGH', # String | If provided, will only return tickets of this priority.
  project_id: 'project_id_example', # String | If provided, will only return tickets for this project.
  remote_created_after: Time.parse('2013-10-20T19:20:30+01:00'), # Time | If provided, will only return tickets created in the third party platform after this datetime.
  remote_created_before: Time.parse('2013-10-20T19:20:30+01:00'), # Time | If provided, will only return tickets created in the third party platform before this datetime.
  remote_fields: 'priority', # String | Deprecated. Use show_enum_origins.
  remote_id: 'remote_id_example', # String | The API provider's ID for the given object.
  remote_updated_after: Time.parse('2013-10-20T19:20:30+01:00'), # Time | If provided, will only return tickets updated in the third party platform after this datetime.
  remote_updated_before: Time.parse('2013-10-20T19:20:30+01:00'), # Time | If provided, will only return tickets updated in the third party platform before this datetime.
  show_enum_origins: 'priority', # String | Which fields should be returned in non-normalized form.
  status: 'CLOSED', # String | If provided, will only return tickets of this status.
  tags: 'tags_example', # String | If provided, will only return tickets matching the tags; multiple tags can be separated by commas.
  ticket_type: 'ticket_type_example' # String | If provided, will only return tickets of this type.
}

begin
  
  result = api_instance.tickets_list(x_account_token, opts)
  p result
rescue MergeTicketingClient::ApiError => e
  puts "Error when calling TicketsApi->tickets_list: #{e}"
end
```

#### Using the tickets_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaginatedTicketList>, Integer, Hash)> tickets_list_with_http_info(x_account_token, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.tickets_list_with_http_info(x_account_token, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaginatedTicketList>
rescue MergeTicketingClient::ApiError => e
  puts "Error when calling TicketsApi->tickets_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_account_token** | **String** | Token identifying the end user. |  |
| **account_id** | **String** | If provided, will only return tickets for this account. | [optional] |
| **assignee_ids** | **String** | If provided, will only return tickets assigned to the assignee_ids; multiple assignee_ids can be separated by commas. | [optional] |
| **collection_ids** | **String** | If provided, will only return tickets assigned to the collection_ids; multiple collection_ids can be separated by commas. | [optional] |
| **completed_after** | **Time** | If provided, will only return tickets completed after this datetime. | [optional] |
| **completed_before** | **Time** | If provided, will only return tickets completed before this datetime. | [optional] |
| **contact_id** | **String** | If provided, will only return tickets for this contact. | [optional] |
| **created_after** | **Time** | If provided, will only return objects created after this datetime. | [optional] |
| **created_before** | **Time** | If provided, will only return objects created before this datetime. | [optional] |
| **cursor** | **String** | The pagination cursor value. | [optional] |
| **due_after** | **Time** | If provided, will only return tickets due after this datetime. | [optional] |
| **due_before** | **Time** | If provided, will only return tickets due before this datetime. | [optional] |
| **expand** | **String** | Which relations should be returned in expanded form. Multiple relation names should be comma separated without spaces. | [optional] |
| **include_deleted_data** | **Boolean** | Whether to include data that was marked as deleted by third party webhooks. | [optional] |
| **include_remote_data** | **Boolean** | Whether to include the original data Merge fetched from the third-party to produce these models. | [optional] |
| **modified_after** | **Time** | If provided, will only return objects modified after this datetime. | [optional] |
| **modified_before** | **Time** | If provided, will only return objects modified before this datetime. | [optional] |
| **page_size** | **Integer** | Number of results to return per page. | [optional] |
| **parent_ticket_id** | **String** | If provided, will only return sub tickets of the parent_ticket_id. | [optional] |
| **priority** | **String** | If provided, will only return tickets of this priority. | [optional] |
| **project_id** | **String** | If provided, will only return tickets for this project. | [optional] |
| **remote_created_after** | **Time** | If provided, will only return tickets created in the third party platform after this datetime. | [optional] |
| **remote_created_before** | **Time** | If provided, will only return tickets created in the third party platform before this datetime. | [optional] |
| **remote_fields** | **String** | Deprecated. Use show_enum_origins. | [optional] |
| **remote_id** | **String** | The API provider&#39;s ID for the given object. | [optional] |
| **remote_updated_after** | **Time** | If provided, will only return tickets updated in the third party platform after this datetime. | [optional] |
| **remote_updated_before** | **Time** | If provided, will only return tickets updated in the third party platform before this datetime. | [optional] |
| **show_enum_origins** | **String** | Which fields should be returned in non-normalized form. | [optional] |
| **status** | **String** | If provided, will only return tickets of this status. | [optional] |
| **tags** | **String** | If provided, will only return tickets matching the tags; multiple tags can be separated by commas. | [optional] |
| **ticket_type** | **String** | If provided, will only return tickets of this type. | [optional] |

### Return type

[**PaginatedTicketList**](PaginatedTicketList.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## tickets_meta_patch_retrieve

> <MetaResponse> tickets_meta_patch_retrieve(x_account_token, id)



Returns metadata for `Ticket` PATCHs.

### Examples

```ruby
require 'time'
require 'merge_ticketing_client'
# setup authorization
MergeTicketingClient.configure do |config|
  # Configure API key authorization: tokenAuth
  config.api_key['tokenAuth'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['tokenAuth'] = 'Bearer'
end

api_instance = MergeTicketingClient::TicketsApi.new
x_account_token = 'x_account_token_example' # String | Token identifying the end user.
id = TODO # String | 

begin
  
  result = api_instance.tickets_meta_patch_retrieve(x_account_token, id)
  p result
rescue MergeTicketingClient::ApiError => e
  puts "Error when calling TicketsApi->tickets_meta_patch_retrieve: #{e}"
end
```

#### Using the tickets_meta_patch_retrieve_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MetaResponse>, Integer, Hash)> tickets_meta_patch_retrieve_with_http_info(x_account_token, id)

```ruby
begin
  
  data, status_code, headers = api_instance.tickets_meta_patch_retrieve_with_http_info(x_account_token, id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MetaResponse>
rescue MergeTicketingClient::ApiError => e
  puts "Error when calling TicketsApi->tickets_meta_patch_retrieve_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_account_token** | **String** | Token identifying the end user. |  |
| **id** | [**String**](.md) |  |  |

### Return type

[**MetaResponse**](MetaResponse.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## tickets_meta_post_retrieve

> <MetaResponse> tickets_meta_post_retrieve(x_account_token)



Returns metadata for `Ticket` POSTs.

### Examples

```ruby
require 'time'
require 'merge_ticketing_client'
# setup authorization
MergeTicketingClient.configure do |config|
  # Configure API key authorization: tokenAuth
  config.api_key['tokenAuth'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['tokenAuth'] = 'Bearer'
end

api_instance = MergeTicketingClient::TicketsApi.new
x_account_token = 'x_account_token_example' # String | Token identifying the end user.

begin
  
  result = api_instance.tickets_meta_post_retrieve(x_account_token)
  p result
rescue MergeTicketingClient::ApiError => e
  puts "Error when calling TicketsApi->tickets_meta_post_retrieve: #{e}"
end
```

#### Using the tickets_meta_post_retrieve_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MetaResponse>, Integer, Hash)> tickets_meta_post_retrieve_with_http_info(x_account_token)

```ruby
begin
  
  data, status_code, headers = api_instance.tickets_meta_post_retrieve_with_http_info(x_account_token)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MetaResponse>
rescue MergeTicketingClient::ApiError => e
  puts "Error when calling TicketsApi->tickets_meta_post_retrieve_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_account_token** | **String** | Token identifying the end user. |  |

### Return type

[**MetaResponse**](MetaResponse.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## tickets_partial_update

> <TicketResponse> tickets_partial_update(x_account_token, id, patched_ticket_endpoint_request, opts)



Updates a `Ticket` object with the given `id`.

### Examples

```ruby
require 'time'
require 'merge_ticketing_client'
# setup authorization
MergeTicketingClient.configure do |config|
  # Configure API key authorization: tokenAuth
  config.api_key['tokenAuth'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['tokenAuth'] = 'Bearer'
end

api_instance = MergeTicketingClient::TicketsApi.new
x_account_token = 'x_account_token_example' # String | Token identifying the end user.
id = TODO # String | 
patched_ticket_endpoint_request = MergeTicketingClient::PatchedTicketEndpointRequest.new({model: MergeTicketingClient::PatchedTicketRequest.new}) # PatchedTicketEndpointRequest | 
opts = {
  is_debug_mode: true, # Boolean | Whether to include debug fields (such as log file links) in the response.
  run_async: true # Boolean | Whether or not third-party updates should be run asynchronously.
}

begin
  
  result = api_instance.tickets_partial_update(x_account_token, id, patched_ticket_endpoint_request, opts)
  p result
rescue MergeTicketingClient::ApiError => e
  puts "Error when calling TicketsApi->tickets_partial_update: #{e}"
end
```

#### Using the tickets_partial_update_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TicketResponse>, Integer, Hash)> tickets_partial_update_with_http_info(x_account_token, id, patched_ticket_endpoint_request, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.tickets_partial_update_with_http_info(x_account_token, id, patched_ticket_endpoint_request, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TicketResponse>
rescue MergeTicketingClient::ApiError => e
  puts "Error when calling TicketsApi->tickets_partial_update_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_account_token** | **String** | Token identifying the end user. |  |
| **id** | [**String**](.md) |  |  |
| **patched_ticket_endpoint_request** | [**PatchedTicketEndpointRequest**](PatchedTicketEndpointRequest.md) |  |  |
| **is_debug_mode** | **Boolean** | Whether to include debug fields (such as log file links) in the response. | [optional] |
| **run_async** | **Boolean** | Whether or not third-party updates should be run asynchronously. | [optional] |

### Return type

[**TicketResponse**](TicketResponse.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
- **Accept**: application/json


## tickets_retrieve

> <Ticket> tickets_retrieve(x_account_token, id, opts)



Returns a `Ticket` object with the given `id`.

### Examples

```ruby
require 'time'
require 'merge_ticketing_client'
# setup authorization
MergeTicketingClient.configure do |config|
  # Configure API key authorization: tokenAuth
  config.api_key['tokenAuth'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['tokenAuth'] = 'Bearer'
end

api_instance = MergeTicketingClient::TicketsApi.new
x_account_token = 'x_account_token_example' # String | Token identifying the end user.
id = TODO # String | 
opts = {
  expand: 'account', # String | Which relations should be returned in expanded form. Multiple relation names should be comma separated without spaces.
  include_remote_data: true, # Boolean | Whether to include the original data Merge fetched from the third-party to produce these models.
  remote_fields: 'priority', # String | Deprecated. Use show_enum_origins.
  show_enum_origins: 'priority' # String | Which fields should be returned in non-normalized form.
}

begin
  
  result = api_instance.tickets_retrieve(x_account_token, id, opts)
  p result
rescue MergeTicketingClient::ApiError => e
  puts "Error when calling TicketsApi->tickets_retrieve: #{e}"
end
```

#### Using the tickets_retrieve_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Ticket>, Integer, Hash)> tickets_retrieve_with_http_info(x_account_token, id, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.tickets_retrieve_with_http_info(x_account_token, id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Ticket>
rescue MergeTicketingClient::ApiError => e
  puts "Error when calling TicketsApi->tickets_retrieve_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_account_token** | **String** | Token identifying the end user. |  |
| **id** | [**String**](.md) |  |  |
| **expand** | **String** | Which relations should be returned in expanded form. Multiple relation names should be comma separated without spaces. | [optional] |
| **include_remote_data** | **Boolean** | Whether to include the original data Merge fetched from the third-party to produce these models. | [optional] |
| **remote_fields** | **String** | Deprecated. Use show_enum_origins. | [optional] |
| **show_enum_origins** | **String** | Which fields should be returned in non-normalized form. | [optional] |

### Return type

[**Ticket**](Ticket.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

