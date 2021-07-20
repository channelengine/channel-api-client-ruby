=begin
#ChannelEngine Channel API

#ChannelEngine API for channels

The version of the OpenAPI document: 2.9.8

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.1.1

=end

require 'cgi'

module ChannelEngineChannelApiClient
  class OrderApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create Order.
    # Create a new order in ChannelEngine.
    # @param [Hash] opts the optional parameters
    # @option opts [ChannelOrderRequest] :channel_order_request 
    # @return [ApiResponse]
    def order_create(opts = {})
      data, _status_code, _headers = order_create_with_http_info(opts)
      data
    end

    # Create Order.
    # Create a new order in ChannelEngine.
    # @param [Hash] opts the optional parameters
    # @option opts [ChannelOrderRequest] :channel_order_request 
    # @return [Array<(ApiResponse, Integer, Hash)>] ApiResponse data, response status code and response headers
    def order_create_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OrderApi.order_create ...'
      end
      # resource path
      local_var_path = '/v2/orders'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json-patch+json', 'application/json', 'application/*+json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'channel_order_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'ApiResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKey']

      new_options = opts.merge(
        :operation => :"OrderApi.order_create",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OrderApi#order_create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Download Invoice.
    # Generates the ChannelEngine VAT invoice for this order in PDF.
    # @param merchant_order_no [String] The unique order reference as used by the merchant.
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :use_customer_culture Generate the invoice in the billing address&#39; country&#39;s language. (default to false)
    # @return [File]
    def order_invoice(merchant_order_no, opts = {})
      data, _status_code, _headers = order_invoice_with_http_info(merchant_order_no, opts)
      data
    end

    # Download Invoice.
    # Generates the ChannelEngine VAT invoice for this order in PDF.
    # @param merchant_order_no [String] The unique order reference as used by the merchant.
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :use_customer_culture Generate the invoice in the billing address&#39; country&#39;s language.
    # @return [Array<(File, Integer, Hash)>] File data, response status code and response headers
    def order_invoice_with_http_info(merchant_order_no, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OrderApi.order_invoice ...'
      end
      # resource path
      local_var_path = '/v2/orders/{merchantOrderNo}/invoice'.sub('{' + 'merchantOrderNo' + '}', CGI.escape(merchant_order_no.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'useCustomerCulture'] = opts[:'use_customer_culture'] if !opts[:'use_customer_culture'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/pdf', 'application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'File'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKey']

      new_options = opts.merge(
        :operation => :"OrderApi.order_invoice",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OrderApi#order_invoice\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Download Packing Slip.
    # Generates the ChannelEngine packing slip for this order in PDF.
    # @param merchant_order_no [String] The unique order reference as used by the merchant.
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :use_customer_culture Generate the invoice in the billing address&#39; country&#39;s language. (default to false)
    # @return [File]
    def order_packing_slip(merchant_order_no, opts = {})
      data, _status_code, _headers = order_packing_slip_with_http_info(merchant_order_no, opts)
      data
    end

    # Download Packing Slip.
    # Generates the ChannelEngine packing slip for this order in PDF.
    # @param merchant_order_no [String] The unique order reference as used by the merchant.
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :use_customer_culture Generate the invoice in the billing address&#39; country&#39;s language.
    # @return [Array<(File, Integer, Hash)>] File data, response status code and response headers
    def order_packing_slip_with_http_info(merchant_order_no, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OrderApi.order_packing_slip ...'
      end
      # resource path
      local_var_path = '/v2/orders/{merchantOrderNo}/packingslip'.sub('{' + 'merchantOrderNo' + '}', CGI.escape(merchant_order_no.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'useCustomerCulture'] = opts[:'use_customer_culture'] if !opts[:'use_customer_culture'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/pdf', 'application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'File'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKey']

      new_options = opts.merge(
        :operation => :"OrderApi.order_packing_slip",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OrderApi#order_packing_slip\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
