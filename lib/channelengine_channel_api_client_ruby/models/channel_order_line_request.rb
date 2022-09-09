=begin
#ChannelEngine Channel API

#ChannelEngine API for channels

The version of the OpenAPI document: 2.13.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.0.0-SNAPSHOT

=end

require 'date'
require 'time'

module ChannelEngineChannelApiClient
  class ChannelOrderLineRequest
    # The unique product reference used by the channel.
    attr_accessor :channel_product_no

    # The unique product reference used by the merchant.
    attr_accessor :merchant_product_no

    # The number of items of the product.
    attr_accessor :quantity

    # The number of items for which cancellation was requested by the customer.  Some channels allow a customer to cancel an order until it has been shipped.  When an order has already been acknowledged in ChannelEngine, it can only be cancelled by creating a cancellation.  Use this field to check whether it is still possible to cancel the order. If this is the case, submit a cancellation to ChannelEngine.
    attr_accessor :cancellation_requested_quantity

    # The value of a single unit of the ordered product including VAT  (in the shop's base currency calculated using the exchange rate at the time of ordering).
    attr_accessor :unit_price_incl_vat

    # A fixed fee that is charged by the Channel for this orderline.  This fee rate is based on the currency of the Channel  This field is optional, send 0 if not applicable.
    attr_accessor :fee_fixed

    # A percentage fee that is charged by the Channel for this orderline.  This field is optional, send 0 if not applicable.
    attr_accessor :fee_rate

    attr_accessor :condition

    # Expected delivery date from channels, empty if channels not support this value
    attr_accessor :expected_delivery_date

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'channel_product_no' => :'ChannelProductNo',
        :'merchant_product_no' => :'MerchantProductNo',
        :'quantity' => :'Quantity',
        :'cancellation_requested_quantity' => :'CancellationRequestedQuantity',
        :'unit_price_incl_vat' => :'UnitPriceInclVat',
        :'fee_fixed' => :'FeeFixed',
        :'fee_rate' => :'FeeRate',
        :'condition' => :'Condition',
        :'expected_delivery_date' => :'ExpectedDeliveryDate'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'channel_product_no' => :'String',
        :'merchant_product_no' => :'String',
        :'quantity' => :'Integer',
        :'cancellation_requested_quantity' => :'Integer',
        :'unit_price_incl_vat' => :'Float',
        :'fee_fixed' => :'Float',
        :'fee_rate' => :'Float',
        :'condition' => :'Condition',
        :'expected_delivery_date' => :'Time'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'merchant_product_no',
        :'expected_delivery_date'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `ChannelEngineChannelApiClient::ChannelOrderLineRequest` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `ChannelEngineChannelApiClient::ChannelOrderLineRequest`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'channel_product_no')
        self.channel_product_no = attributes[:'channel_product_no']
      end

      if attributes.key?(:'merchant_product_no')
        self.merchant_product_no = attributes[:'merchant_product_no']
      end

      if attributes.key?(:'quantity')
        self.quantity = attributes[:'quantity']
      end

      if attributes.key?(:'cancellation_requested_quantity')
        self.cancellation_requested_quantity = attributes[:'cancellation_requested_quantity']
      end

      if attributes.key?(:'unit_price_incl_vat')
        self.unit_price_incl_vat = attributes[:'unit_price_incl_vat']
      end

      if attributes.key?(:'fee_fixed')
        self.fee_fixed = attributes[:'fee_fixed']
      end

      if attributes.key?(:'fee_rate')
        self.fee_rate = attributes[:'fee_rate']
      end

      if attributes.key?(:'condition')
        self.condition = attributes[:'condition']
      end

      if attributes.key?(:'expected_delivery_date')
        self.expected_delivery_date = attributes[:'expected_delivery_date']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @channel_product_no.nil?
        invalid_properties.push('invalid value for "channel_product_no", channel_product_no cannot be nil.')
      end

      if @channel_product_no.to_s.length > 60
        invalid_properties.push('invalid value for "channel_product_no", the character length must be smaller than or equal to 60.')
      end

      if @channel_product_no.to_s.length < 0
        invalid_properties.push('invalid value for "channel_product_no", the character length must be great than or equal to 0.')
      end

      if !@merchant_product_no.nil? && @merchant_product_no.to_s.length > 50
        invalid_properties.push('invalid value for "merchant_product_no", the character length must be smaller than or equal to 50.')
      end

      if !@merchant_product_no.nil? && @merchant_product_no.to_s.length < 0
        invalid_properties.push('invalid value for "merchant_product_no", the character length must be great than or equal to 0.')
      end

      if @quantity.nil?
        invalid_properties.push('invalid value for "quantity", quantity cannot be nil.')
      end

      if @quantity < 0
        invalid_properties.push('invalid value for "quantity", must be greater than or equal to 0.')
      end

      if !@cancellation_requested_quantity.nil? && @cancellation_requested_quantity < 0
        invalid_properties.push('invalid value for "cancellation_requested_quantity", must be greater than or equal to 0.')
      end

      if @unit_price_incl_vat.nil?
        invalid_properties.push('invalid value for "unit_price_incl_vat", unit_price_incl_vat cannot be nil.')
      end

      if @unit_price_incl_vat < 0
        invalid_properties.push('invalid value for "unit_price_incl_vat", must be greater than or equal to 0.')
      end

      if !@fee_fixed.nil? && @fee_fixed < 0
        invalid_properties.push('invalid value for "fee_fixed", must be greater than or equal to 0.')
      end

      if !@fee_rate.nil? && @fee_rate < 0
        invalid_properties.push('invalid value for "fee_rate", must be greater than or equal to 0.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @channel_product_no.nil?
      return false if @channel_product_no.to_s.length > 60
      return false if @channel_product_no.to_s.length < 0
      return false if !@merchant_product_no.nil? && @merchant_product_no.to_s.length > 50
      return false if !@merchant_product_no.nil? && @merchant_product_no.to_s.length < 0
      return false if @quantity.nil?
      return false if @quantity < 0
      return false if !@cancellation_requested_quantity.nil? && @cancellation_requested_quantity < 0
      return false if @unit_price_incl_vat.nil?
      return false if @unit_price_incl_vat < 0
      return false if !@fee_fixed.nil? && @fee_fixed < 0
      return false if !@fee_rate.nil? && @fee_rate < 0
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] channel_product_no Value to be assigned
    def channel_product_no=(channel_product_no)
      if channel_product_no.nil?
        fail ArgumentError, 'channel_product_no cannot be nil'
      end

      if channel_product_no.to_s.length > 60
        fail ArgumentError, 'invalid value for "channel_product_no", the character length must be smaller than or equal to 60.'
      end

      if channel_product_no.to_s.length < 0
        fail ArgumentError, 'invalid value for "channel_product_no", the character length must be great than or equal to 0.'
      end

      @channel_product_no = channel_product_no
    end

    # Custom attribute writer method with validation
    # @param [Object] merchant_product_no Value to be assigned
    def merchant_product_no=(merchant_product_no)
      if !merchant_product_no.nil? && merchant_product_no.to_s.length > 50
        fail ArgumentError, 'invalid value for "merchant_product_no", the character length must be smaller than or equal to 50.'
      end

      if !merchant_product_no.nil? && merchant_product_no.to_s.length < 0
        fail ArgumentError, 'invalid value for "merchant_product_no", the character length must be great than or equal to 0.'
      end

      @merchant_product_no = merchant_product_no
    end

    # Custom attribute writer method with validation
    # @param [Object] quantity Value to be assigned
    def quantity=(quantity)
      if quantity.nil?
        fail ArgumentError, 'quantity cannot be nil'
      end

      if quantity < 0
        fail ArgumentError, 'invalid value for "quantity", must be greater than or equal to 0.'
      end

      @quantity = quantity
    end

    # Custom attribute writer method with validation
    # @param [Object] cancellation_requested_quantity Value to be assigned
    def cancellation_requested_quantity=(cancellation_requested_quantity)
      if !cancellation_requested_quantity.nil? && cancellation_requested_quantity < 0
        fail ArgumentError, 'invalid value for "cancellation_requested_quantity", must be greater than or equal to 0.'
      end

      @cancellation_requested_quantity = cancellation_requested_quantity
    end

    # Custom attribute writer method with validation
    # @param [Object] unit_price_incl_vat Value to be assigned
    def unit_price_incl_vat=(unit_price_incl_vat)
      if unit_price_incl_vat.nil?
        fail ArgumentError, 'unit_price_incl_vat cannot be nil'
      end

      if unit_price_incl_vat < 0
        fail ArgumentError, 'invalid value for "unit_price_incl_vat", must be greater than or equal to 0.'
      end

      @unit_price_incl_vat = unit_price_incl_vat
    end

    # Custom attribute writer method with validation
    # @param [Object] fee_fixed Value to be assigned
    def fee_fixed=(fee_fixed)
      if !fee_fixed.nil? && fee_fixed < 0
        fail ArgumentError, 'invalid value for "fee_fixed", must be greater than or equal to 0.'
      end

      @fee_fixed = fee_fixed
    end

    # Custom attribute writer method with validation
    # @param [Object] fee_rate Value to be assigned
    def fee_rate=(fee_rate)
      if !fee_rate.nil? && fee_rate < 0
        fail ArgumentError, 'invalid value for "fee_rate", must be greater than or equal to 0.'
      end

      @fee_rate = fee_rate
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          channel_product_no == o.channel_product_no &&
          merchant_product_no == o.merchant_product_no &&
          quantity == o.quantity &&
          cancellation_requested_quantity == o.cancellation_requested_quantity &&
          unit_price_incl_vat == o.unit_price_incl_vat &&
          fee_fixed == o.fee_fixed &&
          fee_rate == o.fee_rate &&
          condition == o.condition &&
          expected_delivery_date == o.expected_delivery_date
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [channel_product_no, merchant_product_no, quantity, cancellation_requested_quantity, unit_price_incl_vat, fee_fixed, fee_rate, condition, expected_delivery_date].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.openapi_types.each_pair do |key, type|
        if attributes[self.class.attribute_map[key]].nil? && self.class.openapi_nullable.include?(key)
          self.send("#{key}=", nil)
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :Time
        Time.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        # models (e.g. Pet) or oneOf
        klass = ChannelEngineChannelApiClient.const_get(type)
        klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end
