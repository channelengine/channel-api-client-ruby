=begin
#ChannelEngine Channel API

#ChannelEngine API for channels

OpenAPI spec version: 2.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.0-SNAPSHOT

=end

# Common files
require 'channelengine_channel_api_client_ruby/api_client'
require 'channelengine_channel_api_client_ruby/api_error'
require 'channelengine_channel_api_client_ruby/version'
require 'channelengine_channel_api_client_ruby/configuration'

# Models
require 'channelengine_channel_api_client_ruby/models/address'
require 'channelengine_channel_api_client_ruby/models/api_response'
require 'channelengine_channel_api_client_ruby/models/channel_cancellation_line_response'
require 'channelengine_channel_api_client_ruby/models/channel_cancellation_response'
require 'channelengine_channel_api_client_ruby/models/channel_offer_response'
require 'channelengine_channel_api_client_ruby/models/channel_order_line_request'
require 'channelengine_channel_api_client_ruby/models/channel_order_request'
require 'channelengine_channel_api_client_ruby/models/channel_processed_changes_request'
require 'channelengine_channel_api_client_ruby/models/channel_product_changes_response'
require 'channelengine_channel_api_client_ruby/models/channel_product_response'
require 'channelengine_channel_api_client_ruby/models/channel_references_request'
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
require 'channelengine_channel_api_client_ruby/models/extra_data_item'
require 'channelengine_channel_api_client_ruby/models/single_of_channel_product_changes_response'

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
