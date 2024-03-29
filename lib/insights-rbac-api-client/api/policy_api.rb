=begin
#Role Based Access Control

#The API for Role Based Access Control.

The version of the OpenAPI document: 1.0.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 7.1.0-SNAPSHOT

=end

require 'cgi'

module RBACApiClient
  class PolicyApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create a policy in a tenant
    # @param policy_in [PolicyIn] Policy to create
    # @param [Hash] opts the optional parameters
    # @return [PolicyExtended]
    def create_policies(policy_in, opts = {})
      data, _status_code, _headers = create_policies_with_http_info(policy_in, opts)
      data
    end

    # Create a policy in a tenant
    # @param policy_in [PolicyIn] Policy to create
    # @param [Hash] opts the optional parameters
    # @return [Array<(PolicyExtended, Integer, Hash)>] PolicyExtended data, response status code and response headers
    def create_policies_with_http_info(policy_in, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PolicyApi.create_policies ...'
      end
      # verify the required parameter 'policy_in' is set
      if @api_client.config.client_side_validation && policy_in.nil?
        fail ArgumentError, "Missing the required parameter 'policy_in' when calling PolicyApi.create_policies"
      end
      # resource path
      local_var_path = '/policies/'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(policy_in)

      # return_type
      return_type = opts[:debug_return_type] || 'PolicyExtended'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['basic_auth']

      new_options = opts.merge(
        :operation => :"PolicyApi.create_policies",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PolicyApi#create_policies\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a policy in the tenant
    # @param uuid [String] ID of policy to delete
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_policy(uuid, opts = {})
      delete_policy_with_http_info(uuid, opts)
      nil
    end

    # Delete a policy in the tenant
    # @param uuid [String] ID of policy to delete
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_policy_with_http_info(uuid, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PolicyApi.delete_policy ...'
      end
      # verify the required parameter 'uuid' is set
      if @api_client.config.client_side_validation && uuid.nil?
        fail ArgumentError, "Missing the required parameter 'uuid' when calling PolicyApi.delete_policy"
      end
      # resource path
      local_var_path = '/policies/{uuid}/'.sub('{' + 'uuid' + '}', CGI.escape(uuid.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['basic_auth']

      new_options = opts.merge(
        :operation => :"PolicyApi.delete_policy",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PolicyApi#delete_policy\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a policy in the tenant
    # @param uuid [String] ID of policy to get
    # @param [Hash] opts the optional parameters
    # @return [PolicyExtended]
    def get_policy(uuid, opts = {})
      data, _status_code, _headers = get_policy_with_http_info(uuid, opts)
      data
    end

    # Get a policy in the tenant
    # @param uuid [String] ID of policy to get
    # @param [Hash] opts the optional parameters
    # @return [Array<(PolicyExtended, Integer, Hash)>] PolicyExtended data, response status code and response headers
    def get_policy_with_http_info(uuid, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PolicyApi.get_policy ...'
      end
      # verify the required parameter 'uuid' is set
      if @api_client.config.client_side_validation && uuid.nil?
        fail ArgumentError, "Missing the required parameter 'uuid' when calling PolicyApi.get_policy"
      end
      # resource path
      local_var_path = '/policies/{uuid}/'.sub('{' + 'uuid' + '}', CGI.escape(uuid.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'PolicyExtended'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['basic_auth']

      new_options = opts.merge(
        :operation => :"PolicyApi.get_policy",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PolicyApi#get_policy\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List the policies in the tenant
    # By default, responses are sorted in ascending order by policy name
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit Parameter for selecting the amount of data returned. (default to 10)
    # @option opts [Integer] :offset Parameter for selecting the offset of data. (default to 0)
    # @option opts [String] :name Parameter for filtering resource by name using string contains search.
    # @option opts [String] :scope Parameter for filtering resource by scope. (default to 'account')
    # @option opts [String] :group_name Parameter for filtering resource by group name using string contains search.
    # @option opts [String] :group_uuid Parameter for filtering resource by group uuid using UUID exact match.
    # @option opts [String] :order_by Parameter for ordering policies by value. For inverse ordering, supply &#39;-&#39; before the param value, such as: ?order_by&#x3D;-name
    # @return [PolicyPagination]
    def list_policies(opts = {})
      data, _status_code, _headers = list_policies_with_http_info(opts)
      data
    end

    # List the policies in the tenant
    # By default, responses are sorted in ascending order by policy name
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit Parameter for selecting the amount of data returned. (default to 10)
    # @option opts [Integer] :offset Parameter for selecting the offset of data. (default to 0)
    # @option opts [String] :name Parameter for filtering resource by name using string contains search.
    # @option opts [String] :scope Parameter for filtering resource by scope. (default to 'account')
    # @option opts [String] :group_name Parameter for filtering resource by group name using string contains search.
    # @option opts [String] :group_uuid Parameter for filtering resource by group uuid using UUID exact match.
    # @option opts [String] :order_by Parameter for ordering policies by value. For inverse ordering, supply &#39;-&#39; before the param value, such as: ?order_by&#x3D;-name
    # @return [Array<(PolicyPagination, Integer, Hash)>] PolicyPagination data, response status code and response headers
    def list_policies_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PolicyApi.list_policies ...'
      end
      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] > 1000
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling PolicyApi.list_policies, must be smaller than or equal to 1000.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] < 1
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling PolicyApi.list_policies, must be greater than or equal to 1.'
      end

      if @api_client.config.client_side_validation && !opts[:'offset'].nil? && opts[:'offset'] < 0
        fail ArgumentError, 'invalid value for "opts[:"offset"]" when calling PolicyApi.list_policies, must be greater than or equal to 0.'
      end

      allowable_values = ["account", "principal"]
      if @api_client.config.client_side_validation && opts[:'scope'] && !allowable_values.include?(opts[:'scope'])
        fail ArgumentError, "invalid value for \"scope\", must be one of #{allowable_values}"
      end
      allowable_values = ["name", "modified"]
      if @api_client.config.client_side_validation && opts[:'order_by'] && !allowable_values.include?(opts[:'order_by'])
        fail ArgumentError, "invalid value for \"order_by\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/policies/'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?
      query_params[:'name'] = opts[:'name'] if !opts[:'name'].nil?
      query_params[:'scope'] = opts[:'scope'] if !opts[:'scope'].nil?
      query_params[:'group_name'] = opts[:'group_name'] if !opts[:'group_name'].nil?
      query_params[:'group_uuid'] = opts[:'group_uuid'] if !opts[:'group_uuid'].nil?
      query_params[:'order_by'] = opts[:'order_by'] if !opts[:'order_by'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'PolicyPagination'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['basic_auth']

      new_options = opts.merge(
        :operation => :"PolicyApi.list_policies",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PolicyApi#list_policies\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a policy in the tenant
    # @param uuid [String] ID of policy to update
    # @param policy_in [PolicyIn] Policy to update
    # @param [Hash] opts the optional parameters
    # @return [PolicyExtended]
    def update_policy(uuid, policy_in, opts = {})
      data, _status_code, _headers = update_policy_with_http_info(uuid, policy_in, opts)
      data
    end

    # Update a policy in the tenant
    # @param uuid [String] ID of policy to update
    # @param policy_in [PolicyIn] Policy to update
    # @param [Hash] opts the optional parameters
    # @return [Array<(PolicyExtended, Integer, Hash)>] PolicyExtended data, response status code and response headers
    def update_policy_with_http_info(uuid, policy_in, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PolicyApi.update_policy ...'
      end
      # verify the required parameter 'uuid' is set
      if @api_client.config.client_side_validation && uuid.nil?
        fail ArgumentError, "Missing the required parameter 'uuid' when calling PolicyApi.update_policy"
      end
      # verify the required parameter 'policy_in' is set
      if @api_client.config.client_side_validation && policy_in.nil?
        fail ArgumentError, "Missing the required parameter 'policy_in' when calling PolicyApi.update_policy"
      end
      # resource path
      local_var_path = '/policies/{uuid}/'.sub('{' + 'uuid' + '}', CGI.escape(uuid.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(policy_in)

      # return_type
      return_type = opts[:debug_return_type] || 'PolicyExtended'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['basic_auth']

      new_options = opts.merge(
        :operation => :"PolicyApi.update_policy",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PolicyApi#update_policy\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
