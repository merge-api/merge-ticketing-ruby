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
  class CollectionsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Returns a list of `Collection` objects.
    # @param x_account_token [String] Token identifying the end user.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :collection_type If provided, will only return collections of the given type.
    # @option opts [Time] :created_after If provided, will only return objects created after this datetime.
    # @option opts [Time] :created_before If provided, will only return objects created before this datetime.
    # @option opts [String] :cursor The pagination cursor value.
    # @option opts [String] :expand Which relations should be returned in expanded form. Multiple relation names should be comma separated without spaces.
    # @option opts [Boolean] :include_deleted_data Whether to include data that was marked as deleted by third party webhooks.
    # @option opts [Boolean] :include_remote_data Whether to include the original data Merge fetched from the third-party to produce these models.
    # @option opts [Time] :modified_after If provided, will only return objects modified after this datetime.
    # @option opts [Time] :modified_before If provided, will only return objects modified before this datetime.
    # @option opts [Integer] :page_size Number of results to return per page.
    # @option opts [String] :parent_collection_id If provided, will only return collections whose parent collection matches the given id.
    # @option opts [String] :remote_fields Deprecated. Use show_enum_origins.
    # @option opts [String] :remote_id The API provider&#39;s ID for the given object.
    # @option opts [String] :show_enum_origins Which fields should be returned in non-normalized form.
    # @return [PaginatedCollectionList]
    def collections_list(x_account_token, opts = {})
      data, _status_code, _headers = collections_list_with_http_info(x_account_token, opts)
      data
    end

    # Returns a list of &#x60;Collection&#x60; objects.
    # @param x_account_token [String] Token identifying the end user.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :collection_type If provided, will only return collections of the given type.
    # @option opts [Time] :created_after If provided, will only return objects created after this datetime.
    # @option opts [Time] :created_before If provided, will only return objects created before this datetime.
    # @option opts [String] :cursor The pagination cursor value.
    # @option opts [String] :expand Which relations should be returned in expanded form. Multiple relation names should be comma separated without spaces.
    # @option opts [Boolean] :include_deleted_data Whether to include data that was marked as deleted by third party webhooks.
    # @option opts [Boolean] :include_remote_data Whether to include the original data Merge fetched from the third-party to produce these models.
    # @option opts [Time] :modified_after If provided, will only return objects modified after this datetime.
    # @option opts [Time] :modified_before If provided, will only return objects modified before this datetime.
    # @option opts [Integer] :page_size Number of results to return per page.
    # @option opts [String] :parent_collection_id If provided, will only return collections whose parent collection matches the given id.
    # @option opts [String] :remote_fields Deprecated. Use show_enum_origins.
    # @option opts [String] :remote_id The API provider&#39;s ID for the given object.
    # @option opts [String] :show_enum_origins Which fields should be returned in non-normalized form.
    # @return [Array<(PaginatedCollectionList, Integer, Hash)>] PaginatedCollectionList data, response status code and response headers
    def collections_list_with_http_info(x_account_token, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CollectionsApi.collections_list ...'
      end
      # verify the required parameter 'x_account_token' is set
      if @api_client.config.client_side_validation && x_account_token.nil?
        fail ArgumentError, "Missing the required parameter 'x_account_token' when calling CollectionsApi.collections_list"
      end
      allowable_values = ["LIST", "PROJECT"]
      if @api_client.config.client_side_validation && opts[:'collection_type'] && !allowable_values.include?(opts[:'collection_type'])
        fail ArgumentError, "invalid value for \"collection_type\", must be one of #{allowable_values}"
      end
      allowable_values = ["parent_collection"]
      if @api_client.config.client_side_validation && opts[:'expand'] && !allowable_values.include?(opts[:'expand'])
        fail ArgumentError, "invalid value for \"expand\", must be one of #{allowable_values}"
      end
      allowable_values = ["collection_type"]
      if @api_client.config.client_side_validation && opts[:'remote_fields'] && !allowable_values.include?(opts[:'remote_fields'])
        fail ArgumentError, "invalid value for \"remote_fields\", must be one of #{allowable_values}"
      end
      allowable_values = ["collection_type"]
      if @api_client.config.client_side_validation && opts[:'show_enum_origins'] && !allowable_values.include?(opts[:'show_enum_origins'])
        fail ArgumentError, "invalid value for \"show_enum_origins\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/collections'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'collection_type'] = opts[:'collection_type'] if !opts[:'collection_type'].nil?
      query_params[:'created_after'] = opts[:'created_after'] if !opts[:'created_after'].nil?
      query_params[:'created_before'] = opts[:'created_before'] if !opts[:'created_before'].nil?
      query_params[:'cursor'] = opts[:'cursor'] if !opts[:'cursor'].nil?
      query_params[:'expand'] = opts[:'expand'] if !opts[:'expand'].nil?
      query_params[:'include_deleted_data'] = opts[:'include_deleted_data'] if !opts[:'include_deleted_data'].nil?
      query_params[:'include_remote_data'] = opts[:'include_remote_data'] if !opts[:'include_remote_data'].nil?
      query_params[:'modified_after'] = opts[:'modified_after'] if !opts[:'modified_after'].nil?
      query_params[:'modified_before'] = opts[:'modified_before'] if !opts[:'modified_before'].nil?
      query_params[:'page_size'] = opts[:'page_size'] if !opts[:'page_size'].nil?
      query_params[:'parent_collection_id'] = opts[:'parent_collection_id'] if !opts[:'parent_collection_id'].nil?
      query_params[:'remote_fields'] = opts[:'remote_fields'] if !opts[:'remote_fields'].nil?
      query_params[:'remote_id'] = opts[:'remote_id'] if !opts[:'remote_id'].nil?
      query_params[:'show_enum_origins'] = opts[:'show_enum_origins'] if !opts[:'show_enum_origins'].nil?

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
      return_type = opts[:debug_return_type] || 'PaginatedCollectionList'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['tokenAuth']

      new_options = opts.merge(
        :operation => :"CollectionsApi.collections_list",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CollectionsApi#collections_list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Returns a `Collection` object with the given `id`.
    # @param x_account_token [String] Token identifying the end user.
    # @param id [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand Which relations should be returned in expanded form. Multiple relation names should be comma separated without spaces.
    # @option opts [Boolean] :include_remote_data Whether to include the original data Merge fetched from the third-party to produce these models.
    # @option opts [String] :remote_fields Deprecated. Use show_enum_origins.
    # @option opts [String] :show_enum_origins Which fields should be returned in non-normalized form.
    # @return [Collection]
    def collections_retrieve(x_account_token, id, opts = {})
      data, _status_code, _headers = collections_retrieve_with_http_info(x_account_token, id, opts)
      data
    end

    # Returns a &#x60;Collection&#x60; object with the given &#x60;id&#x60;.
    # @param x_account_token [String] Token identifying the end user.
    # @param id [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand Which relations should be returned in expanded form. Multiple relation names should be comma separated without spaces.
    # @option opts [Boolean] :include_remote_data Whether to include the original data Merge fetched from the third-party to produce these models.
    # @option opts [String] :remote_fields Deprecated. Use show_enum_origins.
    # @option opts [String] :show_enum_origins Which fields should be returned in non-normalized form.
    # @return [Array<(Collection, Integer, Hash)>] Collection data, response status code and response headers
    def collections_retrieve_with_http_info(x_account_token, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CollectionsApi.collections_retrieve ...'
      end
      # verify the required parameter 'x_account_token' is set
      if @api_client.config.client_side_validation && x_account_token.nil?
        fail ArgumentError, "Missing the required parameter 'x_account_token' when calling CollectionsApi.collections_retrieve"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling CollectionsApi.collections_retrieve"
      end
      allowable_values = ["parent_collection"]
      if @api_client.config.client_side_validation && opts[:'expand'] && !allowable_values.include?(opts[:'expand'])
        fail ArgumentError, "invalid value for \"expand\", must be one of #{allowable_values}"
      end
      allowable_values = ["collection_type"]
      if @api_client.config.client_side_validation && opts[:'remote_fields'] && !allowable_values.include?(opts[:'remote_fields'])
        fail ArgumentError, "invalid value for \"remote_fields\", must be one of #{allowable_values}"
      end
      allowable_values = ["collection_type"]
      if @api_client.config.client_side_validation && opts[:'show_enum_origins'] && !allowable_values.include?(opts[:'show_enum_origins'])
        fail ArgumentError, "invalid value for \"show_enum_origins\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/collections/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'expand'] = opts[:'expand'] if !opts[:'expand'].nil?
      query_params[:'include_remote_data'] = opts[:'include_remote_data'] if !opts[:'include_remote_data'].nil?
      query_params[:'remote_fields'] = opts[:'remote_fields'] if !opts[:'remote_fields'].nil?
      query_params[:'show_enum_origins'] = opts[:'show_enum_origins'] if !opts[:'show_enum_origins'].nil?

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
      return_type = opts[:debug_return_type] || 'Collection'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['tokenAuth']

      new_options = opts.merge(
        :operation => :"CollectionsApi.collections_retrieve",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CollectionsApi#collections_retrieve\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end