=begin
#ChannelEngine Channel API

#ChannelEngine API for channels

The version of the OpenAPI document: 2.9.9

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.1.1

=end

require 'cgi'

module ChannelEngineChannelApiClient
  class ProductApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Acknowledge Product Data Changes.
    # This endpoint should be called after a call to GET 'v2/products/data'. After a call to<br />this endpoint ChannelEngine 'knows' which products are known to the channel (and the last<br />time they have been updated) and is therefore able to only return the products<br />that really have changed since the last call to POST 'v2/products/data'.<br />The supplied ChannelReturnNo will be saved<br />in our database and is supposed to be unique, the 'Updated' and 'Removed'<br />fields consist of ChannelReferences which are sent in a previous call<br />within the field 'Created'.
    # @param [Hash] opts the optional parameters
    # @option opts [ChannelProcessedChangesRequest] :channel_processed_changes_request The merchant references of the products which have been&lt;br /&gt; successfully created, updated or deleted (after a call to &#39;GetDataChanges&#39;).
    # @return [ApiResponse]
    def product_acknowledge_data_changes(opts = {})
      data, _status_code, _headers = product_acknowledge_data_changes_with_http_info(opts)
      data
    end

    # Acknowledge Product Data Changes.
    # This endpoint should be called after a call to GET &#39;v2/products/data&#39;. After a call to&lt;br /&gt;this endpoint ChannelEngine &#39;knows&#39; which products are known to the channel (and the last&lt;br /&gt;time they have been updated) and is therefore able to only return the products&lt;br /&gt;that really have changed since the last call to POST &#39;v2/products/data&#39;.&lt;br /&gt;The supplied ChannelReturnNo will be saved&lt;br /&gt;in our database and is supposed to be unique, the &#39;Updated&#39; and &#39;Removed&#39;&lt;br /&gt;fields consist of ChannelReferences which are sent in a previous call&lt;br /&gt;within the field &#39;Created&#39;.
    # @param [Hash] opts the optional parameters
    # @option opts [ChannelProcessedChangesRequest] :channel_processed_changes_request The merchant references of the products which have been&lt;br /&gt; successfully created, updated or deleted (after a call to &#39;GetDataChanges&#39;).
    # @return [Array<(ApiResponse, Integer, Hash)>] ApiResponse data, response status code and response headers
    def product_acknowledge_data_changes_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ProductApi.product_acknowledge_data_changes ...'
      end
      # resource path
      local_var_path = '/v2/products/data'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'channel_processed_changes_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'ApiResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKey']

      new_options = opts.merge(
        :operation => :"ProductApi.product_acknowledge_data_changes",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProductApi#product_acknowledge_data_changes\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Acknowledge Product Offer Changes.
    # After a call to GET 'v2/products/offers' this endpoint should be called with the<br />ChannelProductNo of the products that are successfully updated.<br />Please see 'v2/products/data' and 'v2/products/data' for documentation.<br />In advanced cases, the MerchantProductNo is used for this.<br />In that case, bool keyIsMpn should be true.
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :key_is_mpn If set to true, changes has to be a list of merchant references instead of channel references. (default to false)
    # @option opts [Array<String>] :request_body The channel references of the updated products.
    # @return [ApiResponse]
    def product_acknowledge_offer_changes(opts = {})
      data, _status_code, _headers = product_acknowledge_offer_changes_with_http_info(opts)
      data
    end

    # Acknowledge Product Offer Changes.
    # After a call to GET &#39;v2/products/offers&#39; this endpoint should be called with the&lt;br /&gt;ChannelProductNo of the products that are successfully updated.&lt;br /&gt;Please see &#39;v2/products/data&#39; and &#39;v2/products/data&#39; for documentation.&lt;br /&gt;In advanced cases, the MerchantProductNo is used for this.&lt;br /&gt;In that case, bool keyIsMpn should be true.
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :key_is_mpn If set to true, changes has to be a list of merchant references instead of channel references.
    # @option opts [Array<String>] :request_body The channel references of the updated products.
    # @return [Array<(ApiResponse, Integer, Hash)>] ApiResponse data, response status code and response headers
    def product_acknowledge_offer_changes_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ProductApi.product_acknowledge_offer_changes ...'
      end
      # resource path
      local_var_path = '/v2/products/offers'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'keyIsMpn'] = opts[:'key_is_mpn'] if !opts[:'key_is_mpn'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json-patch+json', 'application/json', 'application/*+json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'request_body'])

      # return_type
      return_type = opts[:debug_return_type] || 'ApiResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKey']

      new_options = opts.merge(
        :operation => :"ProductApi.product_acknowledge_offer_changes",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProductApi#product_acknowledge_offer_changes\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get Product Data Changes.
    # Get all products which have changes since the post http call to POST 'v2/products/data'.<br />The response contains the products which should be created, updated or removed from the channel.<br />After the products have been received and processed successfully 'v2/products/data' should<br />be called with the merchant references of the products which have been processed (see POST 'v2/products/data').<br />ChannelEngine will save this information to make sure that the next call to GET 'v2/products/data' only returns the<br />products that really have changes (and therefore should be created, updated or deleted).<br />A channel willing to integrate with channelengine should therefore only do the following things:<br /> 1. Periodically poll 'v2/products/data' for changes.<br /> 2. If any products are returned, save, update or remove these products.<br /> 3. Send the merchant references of the products that have succesfully been processed<br /> in step 2 to POST 'v2/products/data'.<br /> <br />These three simple steps will make sure that the products on the channel will be synchronized<br />with the products on ChannelEngine. ChannelEngine will use the API key to determine the customer<br />whose products should be returned. Note that child products are only returned if their parent product<br />has been acknowledged in a previous transaction. This way ChannelEngine knows the value of<br />'ChannelParentReference'.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :max_count Optional - limit the amount of products returned for each field&lt;br /&gt; (ToBeCreated, ToBeUpdated, ToBeRemoved) to this number.
    # @option opts [Boolean] :strip_html Optional - strips html by default on all fields (default to true)
    # @return [SingleOfChannelProductChangesResponse]
    def product_get_data_changes(opts = {})
      data, _status_code, _headers = product_get_data_changes_with_http_info(opts)
      data
    end

    # Get Product Data Changes.
    # Get all products which have changes since the post http call to POST &#39;v2/products/data&#39;.&lt;br /&gt;The response contains the products which should be created, updated or removed from the channel.&lt;br /&gt;After the products have been received and processed successfully &#39;v2/products/data&#39; should&lt;br /&gt;be called with the merchant references of the products which have been processed (see POST &#39;v2/products/data&#39;).&lt;br /&gt;ChannelEngine will save this information to make sure that the next call to GET &#39;v2/products/data&#39; only returns the&lt;br /&gt;products that really have changes (and therefore should be created, updated or deleted).&lt;br /&gt;A channel willing to integrate with channelengine should therefore only do the following things:&lt;br /&gt; 1. Periodically poll &#39;v2/products/data&#39; for changes.&lt;br /&gt; 2. If any products are returned, save, update or remove these products.&lt;br /&gt; 3. Send the merchant references of the products that have succesfully been processed&lt;br /&gt; in step 2 to POST &#39;v2/products/data&#39;.&lt;br /&gt; &lt;br /&gt;These three simple steps will make sure that the products on the channel will be synchronized&lt;br /&gt;with the products on ChannelEngine. ChannelEngine will use the API key to determine the customer&lt;br /&gt;whose products should be returned. Note that child products are only returned if their parent product&lt;br /&gt;has been acknowledged in a previous transaction. This way ChannelEngine knows the value of&lt;br /&gt;&#39;ChannelParentReference&#39;.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :max_count Optional - limit the amount of products returned for each field&lt;br /&gt; (ToBeCreated, ToBeUpdated, ToBeRemoved) to this number.
    # @option opts [Boolean] :strip_html Optional - strips html by default on all fields
    # @return [Array<(SingleOfChannelProductChangesResponse, Integer, Hash)>] SingleOfChannelProductChangesResponse data, response status code and response headers
    def product_get_data_changes_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ProductApi.product_get_data_changes ...'
      end
      # resource path
      local_var_path = '/v2/products/data'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'maxCount'] = opts[:'max_count'] if !opts[:'max_count'].nil?
      query_params[:'stripHtml'] = opts[:'strip_html'] if !opts[:'strip_html'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'SingleOfChannelProductChangesResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKey']

      new_options = opts.merge(
        :operation => :"ProductApi.product_get_data_changes",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProductApi#product_get_data_changes\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get Product Data Changes with an optional product type filter. If you select product type products will be filtered by it.  If you won't pass product type you will get products with types: CHILD, PARENT, GRANDPARENT, SINGLE
    # @param [Hash] opts the optional parameters
    # @option opts [DataChangesProductType] :product_type Optional - Type of products
    # @option opts [Integer] :max_count Optional - limit the amount of products returned for each field&lt;br /&gt; (ToBeCreated, ToBeUpdated, ToBeRemoved) to this number.
    # @option opts [Boolean] :strip_html Optional - strips html by default on all fields (default to true)
    # @return [SingleOfChannelProductChangesResponse]
    def product_get_data_changes_full(opts = {})
      data, _status_code, _headers = product_get_data_changes_full_with_http_info(opts)
      data
    end

    # Get Product Data Changes with an optional product type filter. If you select product type products will be filtered by it.  If you won&#39;t pass product type you will get products with types: CHILD, PARENT, GRANDPARENT, SINGLE
    # @param [Hash] opts the optional parameters
    # @option opts [DataChangesProductType] :product_type Optional - Type of products
    # @option opts [Integer] :max_count Optional - limit the amount of products returned for each field&lt;br /&gt; (ToBeCreated, ToBeUpdated, ToBeRemoved) to this number.
    # @option opts [Boolean] :strip_html Optional - strips html by default on all fields
    # @return [Array<(SingleOfChannelProductChangesResponse, Integer, Hash)>] SingleOfChannelProductChangesResponse data, response status code and response headers
    def product_get_data_changes_full_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ProductApi.product_get_data_changes_full ...'
      end
      # resource path
      local_var_path = '/v2/products/data/full'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'productType'] = opts[:'product_type'] if !opts[:'product_type'].nil?
      query_params[:'maxCount'] = opts[:'max_count'] if !opts[:'max_count'].nil?
      query_params[:'stripHtml'] = opts[:'strip_html'] if !opts[:'strip_html'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'SingleOfChannelProductChangesResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKey']

      new_options = opts.merge(
        :operation => :"ProductApi.product_get_data_changes_full",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProductApi#product_get_data_changes_full\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get Product Offer Changes.
    # GET 'v2/products/offers' and POST 'v2/products/offers' closely resemble GET 'v2/products/data' and POST 'v2/products/data'. See the 'v2/products/data'<br />endpoints for documentation. The difference between both endpoints is that 'v2/products/offers' only returns Price and Stock updates and can (and should)<br />therefore be called more often to keep this information (which might change frequently) up to date.
    # @param [Hash] opts the optional parameters
    # @return [CollectionOfChannelOfferResponse]
    def product_get_offer_changes(opts = {})
      data, _status_code, _headers = product_get_offer_changes_with_http_info(opts)
      data
    end

    # Get Product Offer Changes.
    # GET &#39;v2/products/offers&#39; and POST &#39;v2/products/offers&#39; closely resemble GET &#39;v2/products/data&#39; and POST &#39;v2/products/data&#39;. See the &#39;v2/products/data&#39;&lt;br /&gt;endpoints for documentation. The difference between both endpoints is that &#39;v2/products/offers&#39; only returns Price and Stock updates and can (and should)&lt;br /&gt;therefore be called more often to keep this information (which might change frequently) up to date.
    # @param [Hash] opts the optional parameters
    # @return [Array<(CollectionOfChannelOfferResponse, Integer, Hash)>] CollectionOfChannelOfferResponse data, response status code and response headers
    def product_get_offer_changes_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ProductApi.product_get_offer_changes ...'
      end
      # resource path
      local_var_path = '/v2/products/offers'

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
      return_type = opts[:debug_return_type] || 'CollectionOfChannelOfferResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['apiKey']

      new_options = opts.merge(
        :operation => :"ProductApi.product_get_offer_changes",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProductApi#product_get_offer_changes\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
