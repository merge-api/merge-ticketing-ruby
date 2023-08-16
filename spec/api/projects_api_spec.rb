=begin
#Merge Ticketing API

#The unified API for building rich integrations with multiple Ticketing platforms.

The version of the OpenAPI document: 1.0
Contact: hello@merge.dev
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.1.1

=end

require 'spec_helper'
require 'json'

# Unit tests for MergeTicketingClient::ProjectsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'ProjectsApi' do
  before do
    # run before each test
    @api_instance = MergeTicketingClient::ProjectsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ProjectsApi' do
    it 'should create an instance of ProjectsApi' do
      expect(@api_instance).to be_instance_of(MergeTicketingClient::ProjectsApi)
    end
  end

  # unit tests for projects_list
  # Returns a list of &#x60;Project&#x60; objects.
  # @param x_account_token Token identifying the end user.
  # @param [Hash] opts the optional parameters
  # @option opts [Time] :created_after If provided, will only return objects created after this datetime.
  # @option opts [Time] :created_before If provided, will only return objects created before this datetime.
  # @option opts [String] :cursor The pagination cursor value.
  # @option opts [Boolean] :include_deleted_data Whether to include data that was marked as deleted by third party webhooks.
  # @option opts [Boolean] :include_remote_data Whether to include the original data Merge fetched from the third-party to produce these models.
  # @option opts [Time] :modified_after If provided, only objects synced by Merge after this date time will be returned.
  # @option opts [Time] :modified_before If provided, only objects synced by Merge before this date time will be returned.
  # @option opts [Integer] :page_size Number of results to return per page.
  # @option opts [String] :remote_id The API provider&#39;s ID for the given object.
  # @return [PaginatedProjectList]
  describe 'projects_list test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for projects_retrieve
  # Returns a &#x60;Project&#x60; object with the given &#x60;id&#x60;.
  # @param x_account_token Token identifying the end user.
  # @param id 
  # @param [Hash] opts the optional parameters
  # @option opts [Boolean] :include_remote_data Whether to include the original data Merge fetched from the third-party to produce these models.
  # @return [Project]
  describe 'projects_retrieve test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for projects_users_list
  # Returns a list of &#x60;User&#x60; objects.
  # @param x_account_token Token identifying the end user.
  # @param parent_id 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :cursor The pagination cursor value.
  # @option opts [String] :expand Which relations should be returned in expanded form. Multiple relation names should be comma separated without spaces.
  # @option opts [Boolean] :include_deleted_data Whether to include data that was marked as deleted by third party webhooks.
  # @option opts [Boolean] :include_remote_data Whether to include the original data Merge fetched from the third-party to produce these models.
  # @option opts [Integer] :page_size Number of results to return per page.
  # @return [PaginatedUserList]
  describe 'projects_users_list test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
