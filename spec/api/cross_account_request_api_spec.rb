=begin
#Role Based Access Control

#The API for Role Based Access Control.

The version of the OpenAPI document: 1.0.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 7.1.0-SNAPSHOT

=end

require 'spec_helper'
require 'json'

# Unit tests for RBACApiClient::CrossAccountRequestApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'CrossAccountRequestApi' do
  before do
    # run before each test
    @api_instance = RBACApiClient::CrossAccountRequestApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of CrossAccountRequestApi' do
    it 'should create an instance of CrossAccountRequestApi' do
      expect(@api_instance).to be_instance_of(RBACApiClient::CrossAccountRequestApi)
    end
  end

  # unit tests for create_cross_account_requests
  # Create a cross account request
  # @param cross_account_request_in CrossAccountRequest to create
  # @param [Hash] opts the optional parameters
  # @return [CrossAccountRequestOut]
  describe 'create_cross_account_requests test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_cross_account_request
  # Get a cross account request
  # @param uuid ID of cross account request to get
  # @param [Hash] opts the optional parameters
  # @option opts [String] :query_by Parameter for filtering resource by either a user&#39;s ID, or a client&#39;s org. The default value is target_org.
  # @option opts [String] :account Parameter for filtering resource by an account number. Value can be a comma-separated list of ids. To be used in tandem with ?query_by&#x3D;user_id to further filter a user&#39;s requests by account number.
  # @option opts [String] :approved_only Parameter for filtering resource which have been approved.
  # @return [CrossAccountRequestDetail]
  describe 'get_cross_account_request test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_cross_account_requests
  # List the cross account requests for a user or account
  # By default, responses are sorted in ascending order by created_at
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :limit Parameter for selecting the amount of data returned.
  # @option opts [Integer] :offset Parameter for selecting the offset of data.
  # @option opts [String] :query_by Parameter for filtering resource by either a user&#39;s ID, or a client&#39;s org. The default value is target_org.
  # @option opts [String] :account Parameter for filtering resource by an account number. Value can be a comma-separated list of ids. To be used in tandem with ?query_by&#x3D;user_id to further filter a user&#39;s requests by account number.
  # @option opts [String] :org_id Parameter for filtering resource by an org id. Value can be a comma-separated list of ids. To be used in tandem with ?query_by&#x3D;user_id to further filter a user&#39;s requests by org id.
  # @option opts [String] :approved_only Parameter for filtering resource which have been approved.
  # @option opts [String] :status Parameter for filtering resource based on status.
  # @option opts [String] :order_by Parameter for ordering by field. For inverse ordering, use &#39;-&#39;, e.g. ?order_by&#x3D;-start_date.
  # @return [CrossAccountRequestPagination]
  describe 'list_cross_account_requests test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for patch_cross_account_request
  # Patch a cross account request
  # Patch the start_date/end_date/roles of an existing request. Could be used by TAM requestor to cancel request or target account admin to approve/deny request.
  # @param uuid ID of cross account request to get
  # @param cross_account_request_patch Updates to CrossAccountRequest
  # @param [Hash] opts the optional parameters
  # @return [CrossAccountRequestDetail]
  describe 'patch_cross_account_request test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for put_cross_account_request
  # Update a cross account request
  # For TAM requestor to update the start_date/end_date/roles of an existing cross account request.
  # @param uuid ID of cross account request to get
  # @param cross_account_request_update_in Updates to CrossAccountRequest
  # @param [Hash] opts the optional parameters
  # @return [CrossAccountRequestDetail]
  describe 'put_cross_account_request test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
