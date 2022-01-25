=begin
#ChannelEngine Channel API

#ChannelEngine API for channels

The version of the OpenAPI document: 2.9.11

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.1.1

=end

require 'date'
require 'time'

module ChannelEngineChannelApiClient
  class Condition
    NEW = "NEW".freeze
    NEW_REFURBISHED = "NEW_REFURBISHED".freeze
    USED_AS_NEW = "USED_AS_NEW".freeze
    USED_GOOD = "USED_GOOD".freeze
    USED_REASONABLE = "USED_REASONABLE".freeze
    USED_MEDIOCRE = "USED_MEDIOCRE".freeze
    UNKNOWN = "UNKNOWN".freeze
    USED_VERY_GOOD = "USED_VERY_GOOD".freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def self.build_from_hash(value)
      new.build_from_hash(value)
    end

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = Condition.constants.select { |c| Condition::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #Condition" if constantValues.empty?
      value
    end
  end
end
