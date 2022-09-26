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
  class TicketsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Returns a `User` object with the given `id`.
    # @param x_account_token [String] Token identifying the end user.
    # @param id [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cursor The pagination cursor value.
    # @option opts [String] :expand Which relations should be returned in expanded form. Multiple relation names should be comma separated without spaces.
    # @option opts [Boolean] :include_remote_data Whether to include the original data Merge fetched from the third-party to produce these models.
    # @option opts [Integer] :page_size Number of results to return per page.
    # @return [PaginatedUserList]
    def tickets_collaborators_list(x_account_token, id, opts = {})
      data, _status_code, _headers = tickets_collaborators_list_with_http_info(x_account_token, id, opts)
      data
    end

    # Returns a &#x60;User&#x60; object with the given &#x60;id&#x60;.
    # @param x_account_token [String] Token identifying the end user.
    # @param id [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cursor The pagination cursor value.
    # @option opts [String] :expand Which relations should be returned in expanded form. Multiple relation names should be comma separated without spaces.
    # @option opts [Boolean] :include_remote_data Whether to include the original data Merge fetched from the third-party to produce these models.
    # @option opts [Integer] :page_size Number of results to return per page.
    # @return [Array<(PaginatedUserList, Integer, Hash)>] PaginatedUserList data, response status code and response headers
    def tickets_collaborators_list_with_http_info(x_account_token, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TicketsApi.tickets_collaborators_list ...'
      end
      # verify the required parameter 'x_account_token' is set
      if @api_client.config.client_side_validation && x_account_token.nil?
        fail ArgumentError, "Missing the required parameter 'x_account_token' when calling TicketsApi.tickets_collaborators_list"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling TicketsApi.tickets_collaborators_list"
      end
      allowable_values = ["teams"]
      if @api_client.config.client_side_validation && opts[:'expand'] && !allowable_values.include?(opts[:'expand'])
        fail ArgumentError, "invalid value for \"expand\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/tickets/{id}/collaborators'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'cursor'] = opts[:'cursor'] if !opts[:'cursor'].nil?
      query_params[:'expand'] = opts[:'expand'] if !opts[:'expand'].nil?
      query_params[:'include_remote_data'] = opts[:'include_remote_data'] if !opts[:'include_remote_data'].nil?
      query_params[:'page_size'] = opts[:'page_size'] if !opts[:'page_size'].nil?

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
      return_type = opts[:debug_return_type] || 'PaginatedUserList'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['tokenAuth']

      new_options = opts.merge(
        :operation => :"TicketsApi.tickets_collaborators_list",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TicketsApi#tickets_collaborators_list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Creates a `Ticket` object with the given values.
    # @param x_account_token [String] Token identifying the end user.
    # @param ticket_endpoint_request [TicketEndpointRequest] 
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :is_debug_mode Whether to include debug fields (such as log file links) in the response.
    # @option opts [Boolean] :run_async Whether or not third-party updates should be run asynchronously.
    # @return [TicketResponse]
    def tickets_create(x_account_token, ticket_endpoint_request, opts = {})
      data, _status_code, _headers = tickets_create_with_http_info(x_account_token, ticket_endpoint_request, opts)
      data
    end

    # Creates a &#x60;Ticket&#x60; object with the given values.
    # @param x_account_token [String] Token identifying the end user.
    # @param ticket_endpoint_request [TicketEndpointRequest] 
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :is_debug_mode Whether to include debug fields (such as log file links) in the response.
    # @option opts [Boolean] :run_async Whether or not third-party updates should be run asynchronously.
    # @return [Array<(TicketResponse, Integer, Hash)>] TicketResponse data, response status code and response headers
    def tickets_create_with_http_info(x_account_token, ticket_endpoint_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TicketsApi.tickets_create ...'
      end
      # verify the required parameter 'x_account_token' is set
      if @api_client.config.client_side_validation && x_account_token.nil?
        fail ArgumentError, "Missing the required parameter 'x_account_token' when calling TicketsApi.tickets_create"
      end
      # verify the required parameter 'ticket_endpoint_request' is set
      if @api_client.config.client_side_validation && ticket_endpoint_request.nil?
        fail ArgumentError, "Missing the required parameter 'ticket_endpoint_request' when calling TicketsApi.tickets_create"
      end
      # resource path
      local_var_path = '/tickets'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'is_debug_mode'] = opts[:'is_debug_mode'] if !opts[:'is_debug_mode'].nil?
      query_params[:'run_async'] = opts[:'run_async'] if !opts[:'run_async'].nil?

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(ticket_endpoint_request)

      # return_type
      return_type = opts[:debug_return_type] || 'TicketResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['tokenAuth']

      new_options = opts.merge(
        :operation => :"TicketsApi.tickets_create",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TicketsApi#tickets_create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Returns a list of `Ticket` objects.
    # @param x_account_token [String] Token identifying the end user.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :account_id If provided, will only return tickets for this account.
    # @option opts [Time] :created_after If provided, will only return objects created after this datetime.
    # @option opts [Time] :created_before If provided, will only return objects created before this datetime.
    # @option opts [String] :cursor The pagination cursor value.
    # @option opts [String] :expand Which relations should be returned in expanded form. Multiple relation names should be comma separated without spaces.
    # @option opts [Boolean] :include_deleted_data Whether to include data that was marked as deleted by third party webhooks.
    # @option opts [Boolean] :include_remote_data Whether to include the original data Merge fetched from the third-party to produce these models.
    # @option opts [Time] :modified_after If provided, will only return objects modified after this datetime.
    # @option opts [Time] :modified_before If provided, will only return objects modified before this datetime.
    # @option opts [Integer] :page_size Number of results to return per page.
    # @option opts [String] :project_id If provided, will only return tickets for this project.
    # @option opts [String] :remote_fields Which fields should be returned in non-normalized form.
    # @option opts [String] :remote_id The API provider&#39;s ID for the given object.
    # @return [PaginatedTicketList]
    def tickets_list(x_account_token, opts = {})
      data, _status_code, _headers = tickets_list_with_http_info(x_account_token, opts)
      data
    end

    # Returns a list of &#x60;Ticket&#x60; objects.
    # @param x_account_token [String] Token identifying the end user.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :account_id If provided, will only return tickets for this account.
    # @option opts [Time] :created_after If provided, will only return objects created after this datetime.
    # @option opts [Time] :created_before If provided, will only return objects created before this datetime.
    # @option opts [String] :cursor The pagination cursor value.
    # @option opts [String] :expand Which relations should be returned in expanded form. Multiple relation names should be comma separated without spaces.
    # @option opts [Boolean] :include_deleted_data Whether to include data that was marked as deleted by third party webhooks.
    # @option opts [Boolean] :include_remote_data Whether to include the original data Merge fetched from the third-party to produce these models.
    # @option opts [Time] :modified_after If provided, will only return objects modified after this datetime.
    # @option opts [Time] :modified_before If provided, will only return objects modified before this datetime.
    # @option opts [Integer] :page_size Number of results to return per page.
    # @option opts [String] :project_id If provided, will only return tickets for this project.
    # @option opts [String] :remote_fields Which fields should be returned in non-normalized form.
    # @option opts [String] :remote_id The API provider&#39;s ID for the given object.
    # @return [Array<(PaginatedTicketList, Integer, Hash)>] PaginatedTicketList data, response status code and response headers
    def tickets_list_with_http_info(x_account_token, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TicketsApi.tickets_list ...'
      end
      # verify the required parameter 'x_account_token' is set
      if @api_client.config.client_side_validation && x_account_token.nil?
        fail ArgumentError, "Missing the required parameter 'x_account_token' when calling TicketsApi.tickets_list"
      end
      allowable_values = ["account", "account,contact", "account,contact,parent_ticket", "account,parent_ticket", "assignees", "assignees,account", "assignees,account,contact", "assignees,account,contact,parent_ticket", "assignees,account,parent_ticket", "assignees,contact", "assignees,contact,parent_ticket", "assignees,parent_ticket", "assignees,project", "assignees,project,account", "assignees,project,account,contact", "assignees,project,account,contact,parent_ticket", "assignees,project,account,parent_ticket", "assignees,project,contact", "assignees,project,contact,parent_ticket", "assignees,project,parent_ticket", "attachments", "attachments,account", "attachments,account,contact", "attachments,account,contact,parent_ticket", "attachments,account,parent_ticket", "attachments,assignees", "attachments,assignees,account", "attachments,assignees,account,contact", "attachments,assignees,account,contact,parent_ticket", "attachments,assignees,account,parent_ticket", "attachments,assignees,contact", "attachments,assignees,contact,parent_ticket", "attachments,assignees,parent_ticket", "attachments,assignees,project", "attachments,assignees,project,account", "attachments,assignees,project,account,contact", "attachments,assignees,project,account,contact,parent_ticket", "attachments,assignees,project,account,parent_ticket", "attachments,assignees,project,contact", "attachments,assignees,project,contact,parent_ticket", "attachments,assignees,project,parent_ticket", "attachments,contact", "attachments,contact,parent_ticket", "attachments,parent_ticket", "attachments,project", "attachments,project,account", "attachments,project,account,contact", "attachments,project,account,contact,parent_ticket", "attachments,project,account,parent_ticket", "attachments,project,contact", "attachments,project,contact,parent_ticket", "attachments,project,parent_ticket", "contact", "contact,parent_ticket", "parent_ticket", "project", "project,account", "project,account,contact", "project,account,contact,parent_ticket", "project,account,parent_ticket", "project,contact", "project,contact,parent_ticket", "project,parent_ticket"]
      if @api_client.config.client_side_validation && opts[:'expand'] && !allowable_values.include?(opts[:'expand'])
        fail ArgumentError, "invalid value for \"expand\", must be one of #{allowable_values}"
      end
      allowable_values = ["status"]
      if @api_client.config.client_side_validation && opts[:'remote_fields'] && !allowable_values.include?(opts[:'remote_fields'])
        fail ArgumentError, "invalid value for \"remote_fields\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/tickets'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'account_id'] = opts[:'account_id'] if !opts[:'account_id'].nil?
      query_params[:'created_after'] = opts[:'created_after'] if !opts[:'created_after'].nil?
      query_params[:'created_before'] = opts[:'created_before'] if !opts[:'created_before'].nil?
      query_params[:'cursor'] = opts[:'cursor'] if !opts[:'cursor'].nil?
      query_params[:'expand'] = opts[:'expand'] if !opts[:'expand'].nil?
      query_params[:'include_deleted_data'] = opts[:'include_deleted_data'] if !opts[:'include_deleted_data'].nil?
      query_params[:'include_remote_data'] = opts[:'include_remote_data'] if !opts[:'include_remote_data'].nil?
      query_params[:'modified_after'] = opts[:'modified_after'] if !opts[:'modified_after'].nil?
      query_params[:'modified_before'] = opts[:'modified_before'] if !opts[:'modified_before'].nil?
      query_params[:'page_size'] = opts[:'page_size'] if !opts[:'page_size'].nil?
      query_params[:'project_id'] = opts[:'project_id'] if !opts[:'project_id'].nil?
      query_params[:'remote_fields'] = opts[:'remote_fields'] if !opts[:'remote_fields'].nil?
      query_params[:'remote_id'] = opts[:'remote_id'] if !opts[:'remote_id'].nil?

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
      return_type = opts[:debug_return_type] || 'PaginatedTicketList'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['tokenAuth']

      new_options = opts.merge(
        :operation => :"TicketsApi.tickets_list",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TicketsApi#tickets_list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Returns metadata for `Ticket` PATCHs.
    # @param x_account_token [String] Token identifying the end user.
    # @param id [String] 
    # @param [Hash] opts the optional parameters
    # @return [MetaResponse]
    def tickets_meta_patch_retrieve(x_account_token, id, opts = {})
      data, _status_code, _headers = tickets_meta_patch_retrieve_with_http_info(x_account_token, id, opts)
      data
    end

    # Returns metadata for &#x60;Ticket&#x60; PATCHs.
    # @param x_account_token [String] Token identifying the end user.
    # @param id [String] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(MetaResponse, Integer, Hash)>] MetaResponse data, response status code and response headers
    def tickets_meta_patch_retrieve_with_http_info(x_account_token, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TicketsApi.tickets_meta_patch_retrieve ...'
      end
      # verify the required parameter 'x_account_token' is set
      if @api_client.config.client_side_validation && x_account_token.nil?
        fail ArgumentError, "Missing the required parameter 'x_account_token' when calling TicketsApi.tickets_meta_patch_retrieve"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling TicketsApi.tickets_meta_patch_retrieve"
      end
      # resource path
      local_var_path = '/tickets/meta/patch/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      return_type = opts[:debug_return_type] || 'MetaResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['tokenAuth']

      new_options = opts.merge(
        :operation => :"TicketsApi.tickets_meta_patch_retrieve",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TicketsApi#tickets_meta_patch_retrieve\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Returns metadata for `Ticket` POSTs.
    # @param x_account_token [String] Token identifying the end user.
    # @param [Hash] opts the optional parameters
    # @return [MetaResponse]
    def tickets_meta_post_retrieve(x_account_token, opts = {})
      data, _status_code, _headers = tickets_meta_post_retrieve_with_http_info(x_account_token, opts)
      data
    end

    # Returns metadata for &#x60;Ticket&#x60; POSTs.
    # @param x_account_token [String] Token identifying the end user.
    # @param [Hash] opts the optional parameters
    # @return [Array<(MetaResponse, Integer, Hash)>] MetaResponse data, response status code and response headers
    def tickets_meta_post_retrieve_with_http_info(x_account_token, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TicketsApi.tickets_meta_post_retrieve ...'
      end
      # verify the required parameter 'x_account_token' is set
      if @api_client.config.client_side_validation && x_account_token.nil?
        fail ArgumentError, "Missing the required parameter 'x_account_token' when calling TicketsApi.tickets_meta_post_retrieve"
      end
      # resource path
      local_var_path = '/tickets/meta/post'

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
      return_type = opts[:debug_return_type] || 'MetaResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['tokenAuth']

      new_options = opts.merge(
        :operation => :"TicketsApi.tickets_meta_post_retrieve",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TicketsApi#tickets_meta_post_retrieve\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # @param x_account_token [String] Token identifying the end user.
    # @param id [String] 
    # @param patched_ticket_endpoint_request [PatchedTicketEndpointRequest] 
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :is_debug_mode Whether to include debug fields (such as log file links) in the response.
    # @option opts [Boolean] :run_async Whether or not third-party updates should be run asynchronously.
    # @return [TicketResponse]
    def tickets_partial_update(x_account_token, id, patched_ticket_endpoint_request, opts = {})
      data, _status_code, _headers = tickets_partial_update_with_http_info(x_account_token, id, patched_ticket_endpoint_request, opts)
      data
    end

    # @param x_account_token [String] Token identifying the end user.
    # @param id [String] 
    # @param patched_ticket_endpoint_request [PatchedTicketEndpointRequest] 
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :is_debug_mode Whether to include debug fields (such as log file links) in the response.
    # @option opts [Boolean] :run_async Whether or not third-party updates should be run asynchronously.
    # @return [Array<(TicketResponse, Integer, Hash)>] TicketResponse data, response status code and response headers
    def tickets_partial_update_with_http_info(x_account_token, id, patched_ticket_endpoint_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TicketsApi.tickets_partial_update ...'
      end
      # verify the required parameter 'x_account_token' is set
      if @api_client.config.client_side_validation && x_account_token.nil?
        fail ArgumentError, "Missing the required parameter 'x_account_token' when calling TicketsApi.tickets_partial_update"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling TicketsApi.tickets_partial_update"
      end
      # verify the required parameter 'patched_ticket_endpoint_request' is set
      if @api_client.config.client_side_validation && patched_ticket_endpoint_request.nil?
        fail ArgumentError, "Missing the required parameter 'patched_ticket_endpoint_request' when calling TicketsApi.tickets_partial_update"
      end
      # resource path
      local_var_path = '/tickets/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'is_debug_mode'] = opts[:'is_debug_mode'] if !opts[:'is_debug_mode'].nil?
      query_params[:'run_async'] = opts[:'run_async'] if !opts[:'run_async'].nil?

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(patched_ticket_endpoint_request)

      # return_type
      return_type = opts[:debug_return_type] || 'TicketResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['tokenAuth']

      new_options = opts.merge(
        :operation => :"TicketsApi.tickets_partial_update",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TicketsApi#tickets_partial_update\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Returns a `Ticket` object with the given `id`.
    # @param x_account_token [String] Token identifying the end user.
    # @param id [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand Which relations should be returned in expanded form. Multiple relation names should be comma separated without spaces.
    # @option opts [Boolean] :include_remote_data Whether to include the original data Merge fetched from the third-party to produce these models.
    # @option opts [String] :remote_fields Which fields should be returned in non-normalized form.
    # @return [Ticket]
    def tickets_retrieve(x_account_token, id, opts = {})
      data, _status_code, _headers = tickets_retrieve_with_http_info(x_account_token, id, opts)
      data
    end

    # Returns a &#x60;Ticket&#x60; object with the given &#x60;id&#x60;.
    # @param x_account_token [String] Token identifying the end user.
    # @param id [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand Which relations should be returned in expanded form. Multiple relation names should be comma separated without spaces.
    # @option opts [Boolean] :include_remote_data Whether to include the original data Merge fetched from the third-party to produce these models.
    # @option opts [String] :remote_fields Which fields should be returned in non-normalized form.
    # @return [Array<(Ticket, Integer, Hash)>] Ticket data, response status code and response headers
    def tickets_retrieve_with_http_info(x_account_token, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TicketsApi.tickets_retrieve ...'
      end
      # verify the required parameter 'x_account_token' is set
      if @api_client.config.client_side_validation && x_account_token.nil?
        fail ArgumentError, "Missing the required parameter 'x_account_token' when calling TicketsApi.tickets_retrieve"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling TicketsApi.tickets_retrieve"
      end
      allowable_values = ["account", "account,contact", "account,contact,parent_ticket", "account,parent_ticket", "assignees", "assignees,account", "assignees,account,contact", "assignees,account,contact,parent_ticket", "assignees,account,parent_ticket", "assignees,contact", "assignees,contact,parent_ticket", "assignees,parent_ticket", "assignees,project", "assignees,project,account", "assignees,project,account,contact", "assignees,project,account,contact,parent_ticket", "assignees,project,account,parent_ticket", "assignees,project,contact", "assignees,project,contact,parent_ticket", "assignees,project,parent_ticket", "attachments", "attachments,account", "attachments,account,contact", "attachments,account,contact,parent_ticket", "attachments,account,parent_ticket", "attachments,assignees", "attachments,assignees,account", "attachments,assignees,account,contact", "attachments,assignees,account,contact,parent_ticket", "attachments,assignees,account,parent_ticket", "attachments,assignees,contact", "attachments,assignees,contact,parent_ticket", "attachments,assignees,parent_ticket", "attachments,assignees,project", "attachments,assignees,project,account", "attachments,assignees,project,account,contact", "attachments,assignees,project,account,contact,parent_ticket", "attachments,assignees,project,account,parent_ticket", "attachments,assignees,project,contact", "attachments,assignees,project,contact,parent_ticket", "attachments,assignees,project,parent_ticket", "attachments,contact", "attachments,contact,parent_ticket", "attachments,parent_ticket", "attachments,project", "attachments,project,account", "attachments,project,account,contact", "attachments,project,account,contact,parent_ticket", "attachments,project,account,parent_ticket", "attachments,project,contact", "attachments,project,contact,parent_ticket", "attachments,project,parent_ticket", "contact", "contact,parent_ticket", "parent_ticket", "project", "project,account", "project,account,contact", "project,account,contact,parent_ticket", "project,account,parent_ticket", "project,contact", "project,contact,parent_ticket", "project,parent_ticket"]
      if @api_client.config.client_side_validation && opts[:'expand'] && !allowable_values.include?(opts[:'expand'])
        fail ArgumentError, "invalid value for \"expand\", must be one of #{allowable_values}"
      end
      allowable_values = ["status"]
      if @api_client.config.client_side_validation && opts[:'remote_fields'] && !allowable_values.include?(opts[:'remote_fields'])
        fail ArgumentError, "invalid value for \"remote_fields\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/tickets/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'expand'] = opts[:'expand'] if !opts[:'expand'].nil?
      query_params[:'include_remote_data'] = opts[:'include_remote_data'] if !opts[:'include_remote_data'].nil?
      query_params[:'remote_fields'] = opts[:'remote_fields'] if !opts[:'remote_fields'].nil?

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
      return_type = opts[:debug_return_type] || 'Ticket'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['tokenAuth']

      new_options = opts.merge(
        :operation => :"TicketsApi.tickets_retrieve",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TicketsApi#tickets_retrieve\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
