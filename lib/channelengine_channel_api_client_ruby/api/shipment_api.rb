=begin
#ChannelEngine Channel API

#ChannelEngine API for channels

The version of the OpenAPI document: 2.9.12

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.1.1

=end

require 'cgi'

module ChannelEngineChannelApiClient
  class ShipmentApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get Shipments.
    # Gets all shipments created since the supplied date with status CLOSED.
    # @param [Hash] opts the optional parameters
    # @option opts [Time] :from_date Filter on the creation date, starting from this date. This date is inclusive.
    # @option opts [Time] :to_date Filter on the creation date, until this date. This date is exclusive.
    # @option opts [Array<String>] :channel_order_nos Filter on the unique references (ids) as used by the channel.
    # @option opts [Integer] :page The page to filter on. Starts at 1.
    # @return [CollectionOfChannelShipmentResponse]
    def shipment_index(opts = {})
      data, _status_code, _headers = shipment_index_with_http_info(opts)
      data
    end

    # Get Shipments.
    # Gets all shipments created since the supplied date with status CLOSED.
    # @param [Hash] opts the optional parameters
    # @option opts [Time] :from_date Filter on the creation date, starting from this date. This date is inclusive.
    # @option opts [Time] :to_date Filter on the creation date, until this date. This date is exclusive.
    # @option opts [Array<String>] :channel_order_nos Filter on the unique references (ids) as used by the channel.
    # @option opts [Integer] :page The page to filter on. Starts at 1.
    # @return [Array<(CollectionOfChannelShipmentResponse, Integer, Hash)>] CollectionOfChannelShipmentResponse data, response status code and response headers
    def shipment_index_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ShipmentApi.shipment_index ...'
      end
      # resource path
      local_var_path = '/v2/shipments'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'fromDate'] = opts[:'from_date'] if !opts[:'from_date'].nil?
      query_params[:'toDate'] = opts[:'to_date'] if !opts[:'to_date'].nil?
      query_params[:'channelOrderNos'] = @api_client.build_collection_param(opts[:'channel_order_nos'], :multi) if !opts[:'channel_order_nos'].nil?
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'CollectionOfChannelShipmentResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKey']

      new_options = opts.merge(
        :operation => :"ShipmentApi.shipment_index",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ShipmentApi#shipment_index\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Download shipping label.
    # Downloads the shipping label for the shipment. There may pass some time between creating the shipment<br />and the availability of the label. So '404 Not Found' might incidate it is not available yet.
    # @param merchant_shipment_no [String] The unique shipment reference as used by the merchant.
    # @param [Hash] opts the optional parameters
    # @return [File]
    def shipment_shipping_label(merchant_shipment_no, opts = {})
      data, _status_code, _headers = shipment_shipping_label_with_http_info(merchant_shipment_no, opts)
      data
    end

    # Download shipping label.
    # Downloads the shipping label for the shipment. There may pass some time between creating the shipment&lt;br /&gt;and the availability of the label. So &#39;404 Not Found&#39; might incidate it is not available yet.
    # @param merchant_shipment_no [String] The unique shipment reference as used by the merchant.
    # @param [Hash] opts the optional parameters
    # @return [Array<(File, Integer, Hash)>] File data, response status code and response headers
    def shipment_shipping_label_with_http_info(merchant_shipment_no, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ShipmentApi.shipment_shipping_label ...'
      end
      # verify the required parameter 'merchant_shipment_no' is set
      if @api_client.config.client_side_validation && merchant_shipment_no.nil?
        fail ArgumentError, "Missing the required parameter 'merchant_shipment_no' when calling ShipmentApi.shipment_shipping_label"
      end
      # resource path
      local_var_path = '/v2/orders/{merchantShipmentNo}/shippinglabel'.sub('{' + 'merchantShipmentNo' + '}', CGI.escape(merchant_shipment_no.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/vnd.shippingLabel', 'application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'File'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKey']

      new_options = opts.merge(
        :operation => :"ShipmentApi.shipment_shipping_label",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ShipmentApi#shipment_shipping_label\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
