=begin
#ChannelEngine Channel API

#ChannelEngine API for channels

OpenAPI spec version: 2.6.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.0-SNAPSHOT

=end

require "uri"

module ChannelEngineChannelApiClient
  class OrderApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Create Order
    # Create a new order in ChannelEngine.
    # @param model 
    # @param [Hash] opts the optional parameters
    # @return [ApiResponse]
    def order_create(model, opts = {})
      data, _status_code, _headers = order_create_with_http_info(model, opts)
      return data
    end

    # Create Order
    # Create a new order in ChannelEngine.
    # @param model 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ApiResponse, Fixnum, Hash)>] ApiResponse data, response status code and response headers
    def order_create_with_http_info(model, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: OrderApi.order_create ..."
      end
      # verify the required parameter 'model' is set
      if @api_client.config.client_side_validation && model.nil?
        fail ArgumentError, "Missing the required parameter 'model' when calling OrderApi.order_create"
      end
      # resource path
      local_var_path = "/v2/orders"

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'text/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json', 'text/json', 'application/x-www-form-urlencoded'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(model)
      auth_names = ['apikey']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ApiResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OrderApi#order_create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Download Invoice
    # Generates the ChannelEngine VAT invoice for this order in PDF
    # @param merchant_order_no The unique order reference as used by the merchant
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :use_customer_culture Generate the invoice in the billing address&#39; country&#39;s language
    # @return [File]
    def order_invoice(merchant_order_no, opts = {})
      data, _status_code, _headers = order_invoice_with_http_info(merchant_order_no, opts)
      return data
    end

    # Download Invoice
    # Generates the ChannelEngine VAT invoice for this order in PDF
    # @param merchant_order_no The unique order reference as used by the merchant
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :use_customer_culture Generate the invoice in the billing address&#39; country&#39;s language
    # @return [Array<(File, Fixnum, Hash)>] File data, response status code and response headers
    def order_invoice_with_http_info(merchant_order_no, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: OrderApi.order_invoice ..."
      end
      # verify the required parameter 'merchant_order_no' is set
      if @api_client.config.client_side_validation && merchant_order_no.nil?
        fail ArgumentError, "Missing the required parameter 'merchant_order_no' when calling OrderApi.order_invoice"
      end
      # resource path
      local_var_path = "/v2/orders/{merchantOrderNo}/invoice".sub('{' + 'merchantOrderNo' + '}', merchant_order_no.to_s)

      # query parameters
      query_params = {}
      query_params[:'useCustomerCulture'] = opts[:'use_customer_culture'] if !opts[:'use_customer_culture'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/pdf'])

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
        :return_type => 'File')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OrderApi#order_invoice\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Download Packing Slip
    # Generates the ChannelEngine packing slip for this order in PDF
    # @param merchant_order_no The unique order reference as used by the merchant
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :use_customer_culture Generate the invoice in the billing address&#39; country&#39;s language
    # @return [File]
    def order_packing_slip(merchant_order_no, opts = {})
      data, _status_code, _headers = order_packing_slip_with_http_info(merchant_order_no, opts)
      return data
    end

    # Download Packing Slip
    # Generates the ChannelEngine packing slip for this order in PDF
    # @param merchant_order_no The unique order reference as used by the merchant
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :use_customer_culture Generate the invoice in the billing address&#39; country&#39;s language
    # @return [Array<(File, Fixnum, Hash)>] File data, response status code and response headers
    def order_packing_slip_with_http_info(merchant_order_no, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: OrderApi.order_packing_slip ..."
      end
      # verify the required parameter 'merchant_order_no' is set
      if @api_client.config.client_side_validation && merchant_order_no.nil?
        fail ArgumentError, "Missing the required parameter 'merchant_order_no' when calling OrderApi.order_packing_slip"
      end
      # resource path
      local_var_path = "/v2/orders/{merchantOrderNo}/packingslip".sub('{' + 'merchantOrderNo' + '}', merchant_order_no.to_s)

      # query parameters
      query_params = {}
      query_params[:'useCustomerCulture'] = opts[:'use_customer_culture'] if !opts[:'use_customer_culture'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/pdf'])

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
        :return_type => 'File')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OrderApi#order_packing_slip\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
