=begin
#ChannelEngine Channel API

#ChannelEngine API for channels

OpenAPI spec version: 2.5.3

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.0-SNAPSHOT

=end

require "uri"

module ChannelEngineChannelApiClient
  class ShipmentApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Get Shipments
    # Gets all shipments created since the supplied date.
    # @param created_since 
    # @param [Hash] opts the optional parameters
    # @return [CollectionOfChannelShipmentResponse]
    def shipment_index(created_since, opts = {})
      data, _status_code, _headers = shipment_index_with_http_info(created_since, opts)
      return data
    end

    # Get Shipments
    # Gets all shipments created since the supplied date.
    # @param created_since 
    # @param [Hash] opts the optional parameters
    # @return [Array<(CollectionOfChannelShipmentResponse, Fixnum, Hash)>] CollectionOfChannelShipmentResponse data, response status code and response headers
    def shipment_index_with_http_info(created_since, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ShipmentApi.shipment_index ..."
      end
      # verify the required parameter 'created_since' is set
      if @api_client.config.client_side_validation && created_since.nil?
        fail ArgumentError, "Missing the required parameter 'created_since' when calling ShipmentApi.shipment_index"
      end
      # resource path
      local_var_path = "/v2/shipments"

      # query parameters
      query_params = {}
      query_params[:'createdSince'] = created_since

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'text/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['apikey']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CollectionOfChannelShipmentResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ShipmentApi#shipment_index\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
