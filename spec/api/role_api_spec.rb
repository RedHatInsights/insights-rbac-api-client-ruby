=begin
#Role Based Access Control

#The API for Role Based Access Control.

The version of the OpenAPI document: 1.0.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 7.1.0-SNAPSHOT

=end

require 'spec_helper'
require 'json'

# Unit tests for RBACApiClient::RoleApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'RoleApi' do
  before do
    # run before each test
    @api_instance = RBACApiClient::RoleApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of RoleApi' do
    it 'should create an instance of RoleApi' do
      expect(@api_instance).to be_instance_of(RBACApiClient::RoleApi)
    end
  end

  # unit tests for create_role
  # Create a role for a tenant
  # @param role_in Role to create
  # @param [Hash] opts the optional parameters
  # @return [RoleWithAccess]
  describe 'create_role test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_role
  # Delete a role in the tenant
  # @param uuid ID of role to delete
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_role test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_role
  # Get a role in the tenant
  # @param uuid ID of role to get
  # @param [Hash] opts the optional parameters
  # @option opts [String] :scope Parameter for filtering resource by scope.
  # @return [RoleWithAccess]
  describe 'get_role test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_role_access
  # Get access for a role in the tenant
  # @param uuid ID of the role
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :limit Parameter for selecting the amount of data returned.
  # @option opts [Integer] :offset Parameter for selecting the offset of data.
  # @return [AccessPagination]
  describe 'get_role_access test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_roles
  # List the roles for a tenant
  # By default, responses are sorted in ascending order by role name
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :limit Parameter for selecting the amount of data returned.
  # @option opts [Integer] :offset Parameter for selecting the offset of data.
  # @option opts [String] :name Parameter for filtering resource by name using string contains search.
  # @option opts [Boolean] :system Parameter for filtering resource by system flag.
  # @option opts [String] :display_name Parameter for filtering resource by display_name using string contains search.
  # @option opts [String] :name_match Parameter for specifying the matching criteria for an object&#39;s name or display_name.
  # @option opts [String] :scope Parameter for filtering resource by scope.
  # @option opts [String] :order_by Parameter for ordering roles by value. For inverse ordering, supply &#39;-&#39; before the param value, such as: ?order_by&#x3D;-name
  # @option opts [Array<String>] :add_fields Parameter for add list of fields to display for roles.
  # @option opts [String] :username Unique username of the principal to obtain roles for (only available for admins, and if supplied, takes precedence over the identity header).
  # @option opts [String] :application The application name(s) to filter roles by, from permissions or external tenant name. This is an exact match. You may also use a comma-separated list to match on multiple applications.
  # @option opts [String] :permission The permission(s) to filter roles by. This is an exact match. You may also use a comma-separated list to match on multiple permissions.
  # @option opts [String] :external_tenant Parameter for filtering roles by external tenant name using string search.
  # @return [RolePaginationDynamic]
  describe 'list_roles test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for patch_role
  # Patch a role in the tenant
  # @param uuid ID of role to update
  # @param [Hash] opts the optional parameters
  # @option opts [RolePatch] :role_patch Patch to a role
  # @return [RoleWithAccess]
  describe 'patch_role test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_role
  # Update a role in the tenant
  # @param uuid ID of role to update
  # @param role_with_access Update to a role
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'update_role test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
