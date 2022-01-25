=begin
#ChannelEngine Channel API

#ChannelEngine API for channels

The version of the OpenAPI document: 2.9.11

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.1.1

=end

# Common files
require 'channelengine_channel_api_client_ruby/api_client'
require 'channelengine_channel_api_client_ruby/api_error'
require 'channelengine_channel_api_client_ruby/version'
require 'channelengine_channel_api_client_ruby/configuration'

# Models
require 'channelengine_channel_api_client_ruby/models/api_response'
require 'channelengine_channel_api_client_ruby/models/channel_address_request'
require 'channelengine_channel_api_client_ruby/models/channel_cancellation_line_response'
require 'channelengine_channel_api_client_ruby/models/channel_cancellation_response'
require 'channelengine_channel_api_client_ruby/models/channel_offer_response'
require 'channelengine_channel_api_client_ruby/models/channel_order_line_request'
require 'channelengine_channel_api_client_ruby/models/channel_order_line_response'
require 'channelengine_channel_api_client_ruby/models/channel_order_request'
require 'channelengine_channel_api_client_ruby/models/channel_processed_changes_request'
require 'channelengine_channel_api_client_ruby/models/channel_product_changes_response'
require 'channelengine_channel_api_client_ruby/models/channel_product_extra_data_item_response'
require 'channelengine_channel_api_client_ruby/models/channel_product_references_request'
require 'channelengine_channel_api_client_ruby/models/channel_product_response'
require 'channelengine_channel_api_client_ruby/models/channel_return_line_request'
require 'channelengine_channel_api_client_ruby/models/channel_return_line_response'
require 'channelengine_channel_api_client_ruby/models/channel_return_request'
require 'channelengine_channel_api_client_ruby/models/channel_return_response'
require 'channelengine_channel_api_client_ruby/models/channel_shipment_line_response'
require 'channelengine_channel_api_client_ruby/models/channel_shipment_response'
require 'channelengine_channel_api_client_ruby/models/collection_of_channel_cancellation_response'
require 'channelengine_channel_api_client_ruby/models/collection_of_channel_offer_response'
require 'channelengine_channel_api_client_ruby/models/collection_of_channel_return_response'
require 'channelengine_channel_api_client_ruby/models/collection_of_channel_shipment_response'
require 'channelengine_channel_api_client_ruby/models/condition'
require 'channelengine_channel_api_client_ruby/models/data_changes_product_type'
require 'channelengine_channel_api_client_ruby/models/extra_data_type'
require 'channelengine_channel_api_client_ruby/models/gender'
require 'channelengine_channel_api_client_ruby/models/manco_reason'
require 'channelengine_channel_api_client_ruby/models/order_status_view'
require 'channelengine_channel_api_client_ruby/models/return_reason'
require 'channelengine_channel_api_client_ruby/models/return_status'
require 'channelengine_channel_api_client_ruby/models/shipment_line_status'
require 'channelengine_channel_api_client_ruby/models/single_of_channel_product_changes_response'
require 'channelengine_channel_api_client_ruby/models/vat_rate_type'

# APIs
require 'channelengine_channel_api_client_ruby/api/cancellation_api'
require 'channelengine_channel_api_client_ruby/api/order_api'
require 'channelengine_channel_api_client_ruby/api/product_api'
require 'channelengine_channel_api_client_ruby/api/return_api'
require 'channelengine_channel_api_client_ruby/api/shipment_api'

module ChannelEngineChannelApiClient
  class << self
    # Customize default settings for the SDK using block.
    #   ChannelEngineChannelApiClient.configure do |config|
    #     config.username = "xxx"
    #     config.password = "xxx"
    #   end
    # If no block given, return the default Configuration object.
    def configure
      if block_given?
        yield(Configuration.default)
      else
        Configuration.default
      end
    end
  end
end
