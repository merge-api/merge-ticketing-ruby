=begin
#Merge Ticketing API

#The unified API for building rich integrations with multiple Ticketing platforms.

The version of the OpenAPI document: 1.0
Contact: hello@merge.dev
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.1.1

=end

require 'cgi'

module MergeTicketingClient
  class AsyncPassthroughApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Asynchronously pull data from an endpoint not currently supported by Merge.
    # @param x_account_token [String] Token identifying the end user.
    # @param data_passthrough_request [DataPassthroughRequest] 
    # @param [Hash] opts the optional parameters
    # @return [AsyncPassthroughReciept]
    def async_passthrough_create(x_account_token, data_passthrough_request, opts = {})
      data, _status_code, _headers = async_passthrough_create_with_http_info(x_account_token, data_passthrough_request, opts)
      data
    end

    # Asynchronously pull data from an endpoint not currently supported by Merge.
    # @param x_account_token [String] Token identifying the end user.
    # @param data_passthrough_request [DataPassthroughRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(AsyncPassthroughReciept, Integer, Hash)>] AsyncPassthroughReciept data, response status code and response headers
    def async_passthrough_create_with_http_info(x_account_token, data_passthrough_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AsyncPassthroughApi.async_passthrough_create ...'
      end
      # verify the required parameter 'x_account_token' is set
      if @api_client.config.client_side_validation && x_account_token.nil?
        fail ArgumentError, "Missing the required parameter 'x_account_token' when calling AsyncPassthroughApi.async_passthrough_create"
      end
      # verify the required parameter 'data_passthrough_request' is set
      if @api_client.config.client_side_validation && data_passthrough_request.nil?
        fail ArgumentError, "Missing the required parameter 'data_passthrough_request' when calling AsyncPassthroughApi.async_passthrough_create"
      end
      # resource path
      local_var_path = '/async-passthrough'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json', 'application/x-www-form-urlencoded', 'multipart/form-data'])
      header_params[:'X-Account-Token'] = x_account_token

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(data_passthrough_request)

      # return_type
      return_type = opts[:debug_return_type] || 'AsyncPassthroughReciept'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['tokenAuth']

      new_options = opts.merge(
        :operation => :"AsyncPassthroughApi.async_passthrough_create",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AsyncPassthroughApi#async_passthrough_create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieves data from earlier async-passthrough POST request
    # @param x_account_token [String] Token identifying the end user.
    # @param async_passthrough_receipt_id [String] 
    # @param [Hash] opts the optional parameters
    # @return [RemoteResponse]
    def async_passthrough_retrieve(x_account_token, async_passthrough_receipt_id, opts = {})
      data, _status_code, _headers = async_passthrough_retrieve_with_http_info(x_account_token, async_passthrough_receipt_id, opts)
      data
    end

    # Retrieves data from earlier async-passthrough POST request
    # @param x_account_token [String] Token identifying the end user.
    # @param async_passthrough_receipt_id [String] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(RemoteResponse, Integer, Hash)>] RemoteResponse data, response status code and response headers
    def async_passthrough_retrieve_with_http_info(x_account_token, async_passthrough_receipt_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AsyncPassthroughApi.async_passthrough_retrieve ...'
      end
      # verify the required parameter 'x_account_token' is set
      if @api_client.config.client_side_validation && x_account_token.nil?
        fail ArgumentError, "Missing the required parameter 'x_account_token' when calling AsyncPassthroughApi.async_passthrough_retrieve"
      end
      # verify the required parameter 'async_passthrough_receipt_id' is set
      if @api_client.config.client_side_validation && async_passthrough_receipt_id.nil?
        fail ArgumentError, "Missing the required parameter 'async_passthrough_receipt_id' when calling AsyncPassthroughApi.async_passthrough_retrieve"
      end
      # resource path
      local_var_path = '/async-passthrough/{async_passthrough_receipt_id}'.sub('{' + 'async_passthrough_receipt_id' + '}', CGI.escape(async_passthrough_receipt_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      header_params[:'X-Account-Token'] = x_account_token

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'RemoteResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['tokenAuth']

      new_options = opts.merge(
        :operation => :"AsyncPassthroughApi.async_passthrough_retrieve",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AsyncPassthroughApi#async_passthrough_retrieve\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
