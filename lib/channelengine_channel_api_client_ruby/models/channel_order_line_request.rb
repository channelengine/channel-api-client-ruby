=begin
#ChannelEngine Channel API

#ChannelEngine API for channels

OpenAPI spec version: 2.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.0-SNAPSHOT

=end

require 'date'

module ChannelEngineChannelApiClient

  class ChannelOrderLineRequest
    attr_accessor :channel_product_no

    attr_accessor :quantity

    # The number of items for which cancellation was requested by the customer.  Some channels allow a customer to cancel an order until it has been shipped.  When an order has already been acknowledged in ChannelEngine, it can only be cancelled by creating a cancellation.  Use this field to check whether it is still possible to cancel the order. If this is the case, submit a cancellation to ChannelEngine
    attr_accessor :cancellation_requested_quantity

    # The value of a single unit of the ordered product including VAT  (in the shop's base currency calculated using the exchange rate at the time of ordering).
    attr_accessor :unit_price_incl_vat

    # A fixed fee that is charged by the Channel for this orderline.  This field is optional, send 0 if not applicable.
    attr_accessor :fee_fixed

    # A percentage fee that is charged by the Channel for this orderline.  This field is optional, send 0 if not applicable.
    attr_accessor :fee_rate

    # The condition of the product, this can be used to indicate that a product is a second-hand product
    attr_accessor :condition

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'channel_product_no' => :'ChannelProductNo',
        :'quantity' => :'Quantity',
        :'cancellation_requested_quantity' => :'CancellationRequestedQuantity',
        :'unit_price_incl_vat' => :'UnitPriceInclVat',
        :'fee_fixed' => :'FeeFixed',
        :'fee_rate' => :'FeeRate',
        :'condition' => :'Condition'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'channel_product_no' => :'String',
        :'quantity' => :'Integer',
        :'cancellation_requested_quantity' => :'Integer',
        :'unit_price_incl_vat' => :'Float',
        :'fee_fixed' => :'Float',
        :'fee_rate' => :'Float',
        :'condition' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'ChannelProductNo')
        self.channel_product_no = attributes[:'ChannelProductNo']
      end

      if attributes.has_key?(:'Quantity')
        self.quantity = attributes[:'Quantity']
      end

      if attributes.has_key?(:'CancellationRequestedQuantity')
        self.cancellation_requested_quantity = attributes[:'CancellationRequestedQuantity']
      end

      if attributes.has_key?(:'UnitPriceInclVat')
        self.unit_price_incl_vat = attributes[:'UnitPriceInclVat']
      end

      if attributes.has_key?(:'FeeFixed')
        self.fee_fixed = attributes[:'FeeFixed']
      end

      if attributes.has_key?(:'FeeRate')
        self.fee_rate = attributes[:'FeeRate']
      end

      if attributes.has_key?(:'Condition')
        self.condition = attributes[:'Condition']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @channel_product_no.nil?
        invalid_properties.push("invalid value for 'channel_product_no', channel_product_no cannot be nil.")
      end

      if @channel_product_no.to_s.length > 50
        invalid_properties.push("invalid value for 'channel_product_no', the character length must be smaller than or equal to 50.")
      end

      if @channel_product_no.to_s.length < 0
        invalid_properties.push("invalid value for 'channel_product_no', the character length must be great than or equal to 0.")
      end

      if @quantity.nil?
        invalid_properties.push("invalid value for 'quantity', quantity cannot be nil.")
      end

      if @cancellation_requested_quantity.nil?
        invalid_properties.push("invalid value for 'cancellation_requested_quantity', cancellation_requested_quantity cannot be nil.")
      end

      if @unit_price_incl_vat.nil?
        invalid_properties.push("invalid value for 'unit_price_incl_vat', unit_price_incl_vat cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @channel_product_no.nil?
      return false if @channel_product_no.to_s.length > 50
      return false if @channel_product_no.to_s.length < 0
      return false if @quantity.nil?
      return false if @cancellation_requested_quantity.nil?
      return false if @unit_price_incl_vat.nil?
      condition_validator = EnumAttributeValidator.new('String', ["NEW", "NEW_REFURBISHED", "USED_AS_NEW", "USED_GOOD", "USED_REASONABLE", "USED_MEDIOCRE", "UNKNOWN"])
      return false unless condition_validator.valid?(@condition)
      return true
    end

    # Custom attribute writer method with validation
    # @param [Object] channel_product_no Value to be assigned
    def channel_product_no=(channel_product_no)
      if channel_product_no.nil?
        fail ArgumentError, "channel_product_no cannot be nil"
      end

      if channel_product_no.to_s.length > 50
        fail ArgumentError, "invalid value for 'channel_product_no', the character length must be smaller than or equal to 50."
      end

      if channel_product_no.to_s.length < 0
        fail ArgumentError, "invalid value for 'channel_product_no', the character length must be great than or equal to 0."
      end

      @channel_product_no = channel_product_no
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] condition Object to be assigned
    def condition=(condition)
      validator = EnumAttributeValidator.new('String', ["NEW", "NEW_REFURBISHED", "USED_AS_NEW", "USED_GOOD", "USED_REASONABLE", "USED_MEDIOCRE", "UNKNOWN"])
      unless validator.valid?(condition)
        fail ArgumentError, "invalid value for 'condition', must be one of #{validator.allowable_values}."
      end
      @condition = condition
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          channel_product_no == o.channel_product_no &&
          quantity == o.quantity &&
          cancellation_requested_quantity == o.cancellation_requested_quantity &&
          unit_price_incl_vat == o.unit_price_incl_vat &&
          fee_fixed == o.fee_fixed &&
          fee_rate == o.fee_rate &&
          condition == o.condition
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [channel_product_no, quantity, cancellation_requested_quantity, unit_price_incl_vat, fee_fixed, fee_rate, condition].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map{ |v| _deserialize($1, v) } )
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BOOLEAN
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
        temp_model = ChannelEngineChannelApiClient.const_get(type).new
        temp_model.build_from_hash(value)
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
        next if value.nil?
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
        value.compact.map{ |v| _to_hash(v) }
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
