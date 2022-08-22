# MergeTicketingClient::AttachmentsApi

All URIs are relative to *https://api.merge.dev/api/ticketing/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**attachments_create**](AttachmentsApi.md#attachments_create) | **POST** /attachments |  |
| [**attachments_list**](AttachmentsApi.md#attachments_list) | **GET** /attachments |  |
| [**attachments_meta_post_retrieve**](AttachmentsApi.md#attachments_meta_post_retrieve) | **GET** /attachments/meta/post |  |
| [**attachments_retrieve**](AttachmentsApi.md#attachments_retrieve) | **GET** /attachments/{id} |  |


## attachments_create

> <TicketingAttachmentResponse> attachments_create(x_account_token, ticketing_attachment_endpoint_request, opts)



Creates an `Attachment` object with the given values.

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

api_instance = MergeTicketingClient::AttachmentsApi.new
x_account_token = 'x_account_token_example' # String | Token identifying the end user.
ticketing_attachment_endpoint_request = MergeTicketingClient::TicketingAttachmentEndpointRequest.new({model: MergeTicketingClient::AttachmentRequest.new}) # TicketingAttachmentEndpointRequest | 
opts = {
  is_debug_mode: true, # Boolean | Whether to include debug fields (such as log file links) in the response.
  run_async: true # Boolean | Whether or not third-party updates should be run asynchronously.
}

begin
  
  result = api_instance.attachments_create(x_account_token, ticketing_attachment_endpoint_request, opts)
  p result
rescue MergeTicketingClient::ApiError => e
  puts "Error when calling AttachmentsApi->attachments_create: #{e}"
end
```

#### Using the attachments_create_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TicketingAttachmentResponse>, Integer, Hash)> attachments_create_with_http_info(x_account_token, ticketing_attachment_endpoint_request, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.attachments_create_with_http_info(x_account_token, ticketing_attachment_endpoint_request, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TicketingAttachmentResponse>
rescue MergeTicketingClient::ApiError => e
  puts "Error when calling AttachmentsApi->attachments_create_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_account_token** | **String** | Token identifying the end user. |  |
| **ticketing_attachment_endpoint_request** | [**TicketingAttachmentEndpointRequest**](TicketingAttachmentEndpointRequest.md) |  |  |
| **is_debug_mode** | **Boolean** | Whether to include debug fields (such as log file links) in the response. | [optional] |
| **run_async** | **Boolean** | Whether or not third-party updates should be run asynchronously. | [optional] |

### Return type

[**TicketingAttachmentResponse**](TicketingAttachmentResponse.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: application/json, application/x-www-form-urlencoded, multipart/form-data
- **Accept**: application/json


## attachments_list

> <PaginatedAttachmentList> attachments_list(x_account_token, opts)



Returns a list of `Attachment` objects.

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

api_instance = MergeTicketingClient::AttachmentsApi.new
x_account_token = 'x_account_token_example' # String | Token identifying the end user.
opts = {
  created_after: Time.parse('2013-10-20T19:20:30+01:00'), # Time | If provided, will only return objects created after this datetime.
  created_before: Time.parse('2013-10-20T19:20:30+01:00'), # Time | If provided, will only return objects created before this datetime.
  cursor: 'cD0yMDIxLTAxLTA2KzAzJTNBMjQlM0E1My40MzQzMjYlMkIwMCUzQTAw', # String | The pagination cursor value.
  expand: 'ticket', # String | Which relations should be returned in expanded form. Multiple relation names should be comma separated without spaces.
  include_deleted_data: true, # Boolean | Whether to include data that was marked as deleted by third party webhooks.
  include_remote_data: true, # Boolean | Whether to include the original data Merge fetched from the third-party to produce these models.
  modified_after: Time.parse('2013-10-20T19:20:30+01:00'), # Time | If provided, will only return objects modified after this datetime.
  modified_before: Time.parse('2013-10-20T19:20:30+01:00'), # Time | If provided, will only return objects modified before this datetime.
  page_size: 56, # Integer | Number of results to return per page.
  remote_id: 'remote_id_example', # String | The API provider's ID for the given object.
  ticket_id: 'ticket_id_example' # String | If provided, will only return comments for this ticket.
}

begin
  
  result = api_instance.attachments_list(x_account_token, opts)
  p result
rescue MergeTicketingClient::ApiError => e
  puts "Error when calling AttachmentsApi->attachments_list: #{e}"
end
```

#### Using the attachments_list_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaginatedAttachmentList>, Integer, Hash)> attachments_list_with_http_info(x_account_token, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.attachments_list_with_http_info(x_account_token, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaginatedAttachmentList>
rescue MergeTicketingClient::ApiError => e
  puts "Error when calling AttachmentsApi->attachments_list_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_account_token** | **String** | Token identifying the end user. |  |
| **created_after** | **Time** | If provided, will only return objects created after this datetime. | [optional] |
| **created_before** | **Time** | If provided, will only return objects created before this datetime. | [optional] |
| **cursor** | **String** | The pagination cursor value. | [optional] |
| **expand** | **String** | Which relations should be returned in expanded form. Multiple relation names should be comma separated without spaces. | [optional] |
| **include_deleted_data** | **Boolean** | Whether to include data that was marked as deleted by third party webhooks. | [optional] |
| **include_remote_data** | **Boolean** | Whether to include the original data Merge fetched from the third-party to produce these models. | [optional] |
| **modified_after** | **Time** | If provided, will only return objects modified after this datetime. | [optional] |
| **modified_before** | **Time** | If provided, will only return objects modified before this datetime. | [optional] |
| **page_size** | **Integer** | Number of results to return per page. | [optional] |
| **remote_id** | **String** | The API provider&#39;s ID for the given object. | [optional] |
| **ticket_id** | **String** | If provided, will only return comments for this ticket. | [optional] |

### Return type

[**PaginatedAttachmentList**](PaginatedAttachmentList.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## attachments_meta_post_retrieve

> <MetaResponse> attachments_meta_post_retrieve(x_account_token)



Returns metadata for `TicketingAttachment` POSTs.

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

api_instance = MergeTicketingClient::AttachmentsApi.new
x_account_token = 'x_account_token_example' # String | Token identifying the end user.

begin
  
  result = api_instance.attachments_meta_post_retrieve(x_account_token)
  p result
rescue MergeTicketingClient::ApiError => e
  puts "Error when calling AttachmentsApi->attachments_meta_post_retrieve: #{e}"
end
```

#### Using the attachments_meta_post_retrieve_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MetaResponse>, Integer, Hash)> attachments_meta_post_retrieve_with_http_info(x_account_token)

```ruby
begin
  
  data, status_code, headers = api_instance.attachments_meta_post_retrieve_with_http_info(x_account_token)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MetaResponse>
rescue MergeTicketingClient::ApiError => e
  puts "Error when calling AttachmentsApi->attachments_meta_post_retrieve_with_http_info: #{e}"
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


## attachments_retrieve

> <Attachment> attachments_retrieve(x_account_token, id, opts)



Returns an `Attachment` object with the given `id`.

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

api_instance = MergeTicketingClient::AttachmentsApi.new
x_account_token = 'x_account_token_example' # String | Token identifying the end user.
id = TODO # String | 
opts = {
  expand: 'ticket', # String | Which relations should be returned in expanded form. Multiple relation names should be comma separated without spaces.
  include_remote_data: true # Boolean | Whether to include the original data Merge fetched from the third-party to produce these models.
}

begin
  
  result = api_instance.attachments_retrieve(x_account_token, id, opts)
  p result
rescue MergeTicketingClient::ApiError => e
  puts "Error when calling AttachmentsApi->attachments_retrieve: #{e}"
end
```

#### Using the attachments_retrieve_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Attachment>, Integer, Hash)> attachments_retrieve_with_http_info(x_account_token, id, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.attachments_retrieve_with_http_info(x_account_token, id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Attachment>
rescue MergeTicketingClient::ApiError => e
  puts "Error when calling AttachmentsApi->attachments_retrieve_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **x_account_token** | **String** | Token identifying the end user. |  |
| **id** | [**String**](.md) |  |  |
| **expand** | **String** | Which relations should be returned in expanded form. Multiple relation names should be comma separated without spaces. | [optional] |
| **include_remote_data** | **Boolean** | Whether to include the original data Merge fetched from the third-party to produce these models. | [optional] |

### Return type

[**Attachment**](Attachment.md)

### Authorization

[tokenAuth](../README.md#tokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

