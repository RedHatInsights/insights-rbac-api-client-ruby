=begin
#Role Based Access Control

#The API for Role Based Access Control.

The version of the OpenAPI document: 1.0.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.2.2

=end

require 'cgi'

module RBACApiClient
  class PrincipalApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # List the principals for a tenant
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit Parameter for selecting the amount of data returned. (default to 10)
    # @option opts [Integer] :offset Parameter for selecting the offset of data. (default to 0)
    # @option opts [String] :usernames Usernames of principals to get
    # @option opts [String] :sort_order The sort order of the query, either ascending or descending
    # @return [PrincipalPagination]
    def list_principals(opts = {})
      data, _status_code, _headers = list_principals_with_http_info(opts)
      data
    end

    # List the principals for a tenant
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit Parameter for selecting the amount of data returned.
    # @option opts [Integer] :offset Parameter for selecting the offset of data.
    # @option opts [String] :usernames Usernames of principals to get
    # @option opts [String] :sort_order The sort order of the query, either ascending or descending
    # @return [Array<(PrincipalPagination, Integer, Hash)>] PrincipalPagination data, response status code and response headers
    def list_principals_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PrincipalApi.list_principals ...'
      end
      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] > 1000
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling PrincipalApi.list_principals, must be smaller than or equal to 1000.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] < 1
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling PrincipalApi.list_principals, must be greater than or equal to 1.'
      end

      if @api_client.config.client_side_validation && !opts[:'offset'].nil? && opts[:'offset'] < 0
        fail ArgumentError, 'invalid value for "opts[:"offset"]" when calling PrincipalApi.list_principals, must be greater than or equal to 0.'
      end

      allowable_values = ["asc", "desc"]
      if @api_client.config.client_side_validation && opts[:'sort_order'] && !allowable_values.include?(opts[:'sort_order'])
        fail ArgumentError, "invalid value for \"sort_order\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/principals/'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?
      query_params[:'usernames'] = opts[:'usernames'] if !opts[:'usernames'].nil?
      query_params[:'sort_order'] = opts[:'sort_order'] if !opts[:'sort_order'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'PrincipalPagination' 

      # auth_names
      auth_names = opts[:auth_names] || ['basic_auth']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PrincipalApi#list_principals\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
