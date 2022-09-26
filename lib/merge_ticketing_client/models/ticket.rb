=begin
#Merge Ticketing API

#The unified API for building rich integrations with multiple Ticketing platforms.

The version of the OpenAPI document: 1.0
Contact: hello@merge.dev
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.1.1

=end

require 'date'
require 'time'

module MergeTicketingClient
  # # The Ticket Object ### Description The `Ticket` object is used to represent a ticket or a task within a system.  ### Usage Example TODO
  class Ticket
    attr_accessor :id

    # The third-party API ID of the matching object.
    attr_accessor :remote_id

    # The ticket's name.
    attr_accessor :name

    attr_accessor :assignees

    # The ticket's due date.
    attr_accessor :due_date

    # The current status of the ticket.
    attr_accessor :status

    # The ticket's description.
    attr_accessor :description

    attr_accessor :project

    # The ticket's type.
    attr_accessor :ticket_type

    attr_accessor :account

    attr_accessor :contact

    attr_accessor :parent_ticket

    attr_accessor :attachments

    attr_accessor :tags

    # When the third party's ticket was created.
    attr_accessor :remote_created_at

    # When the third party's ticket was updated.
    attr_accessor :remote_updated_at

    # When the ticket was completed.
    attr_accessor :completed_at

    attr_accessor :remote_data

    attr_accessor :remote_was_deleted

    # The 3rd party url of the Ticket.
    attr_accessor :ticket_url

    # The priority or urgency of the Ticket. Possible values include: URGENT, HIGH, NORMAL, LOW - in cases where there is no clear mapping - the original value passed through.
    attr_accessor :priority

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'remote_id' => :'remote_id',
        :'name' => :'name',
        :'assignees' => :'assignees',
        :'due_date' => :'due_date',
        :'status' => :'status',
        :'description' => :'description',
        :'project' => :'project',
        :'ticket_type' => :'ticket_type',
        :'account' => :'account',
        :'contact' => :'contact',
        :'parent_ticket' => :'parent_ticket',
        :'attachments' => :'attachments',
        :'tags' => :'tags',
        :'remote_created_at' => :'remote_created_at',
        :'remote_updated_at' => :'remote_updated_at',
        :'completed_at' => :'completed_at',
        :'remote_data' => :'remote_data',
        :'remote_was_deleted' => :'remote_was_deleted',
        :'ticket_url' => :'ticket_url',
        :'priority' => :'priority'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'id' => :'String',
        :'remote_id' => :'String',
        :'name' => :'String',
        :'assignees' => :'Array<String>',
        :'due_date' => :'Time',
        :'status' => :'TicketStatusEnum',
        :'description' => :'String',
        :'project' => :'String',
        :'ticket_type' => :'String',
        :'account' => :'String',
        :'contact' => :'String',
        :'parent_ticket' => :'String',
        :'attachments' => :'Array<String>',
        :'tags' => :'Array<String>',
        :'remote_created_at' => :'Time',
        :'remote_updated_at' => :'Time',
        :'completed_at' => :'Time',
        :'remote_data' => :'Array<RemoteData>',
        :'remote_was_deleted' => :'Boolean',
        :'ticket_url' => :'String',
        :'priority' => :'PriorityEnum'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'remote_id',
        :'name',
        :'due_date',
        :'status',
        :'description',
        :'project',
        :'ticket_type',
        :'account',
        :'contact',
        :'parent_ticket',
        :'remote_created_at',
        :'remote_updated_at',
        :'completed_at',
        :'remote_data',
        :'ticket_url',
        :'priority'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `MergeTicketingClient::Ticket` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `MergeTicketingClient::Ticket`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'remote_id')
        self.remote_id = attributes[:'remote_id']
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'assignees')
        if (value = attributes[:'assignees']).is_a?(Array)
          self.assignees = value
        end
      end

      if attributes.key?(:'due_date')
        self.due_date = attributes[:'due_date']
      end

      if attributes.key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.key?(:'project')
        self.project = attributes[:'project']
      end

      if attributes.key?(:'ticket_type')
        self.ticket_type = attributes[:'ticket_type']
      end

      if attributes.key?(:'account')
        self.account = attributes[:'account']
      end

      if attributes.key?(:'contact')
        self.contact = attributes[:'contact']
      end

      if attributes.key?(:'parent_ticket')
        self.parent_ticket = attributes[:'parent_ticket']
      end

      if attributes.key?(:'attachments')
        if (value = attributes[:'attachments']).is_a?(Array)
          self.attachments = value
        end
      end

      if attributes.key?(:'tags')
        if (value = attributes[:'tags']).is_a?(Array)
          self.tags = value
        end
      end

      if attributes.key?(:'remote_created_at')
        self.remote_created_at = attributes[:'remote_created_at']
      end

      if attributes.key?(:'remote_updated_at')
        self.remote_updated_at = attributes[:'remote_updated_at']
      end

      if attributes.key?(:'completed_at')
        self.completed_at = attributes[:'completed_at']
      end

      if attributes.key?(:'remote_data')
        if (value = attributes[:'remote_data']).is_a?(Array)
          self.remote_data = value
        end
      end

      if attributes.key?(:'remote_was_deleted')
        self.remote_was_deleted = attributes[:'remote_was_deleted']
      end

      if attributes.key?(:'ticket_url')
        self.ticket_url = attributes[:'ticket_url']
      end

      if attributes.key?(:'priority')
        self.priority = attributes[:'priority']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if !@ticket_url.nil? && @ticket_url.to_s.length > 2000
        invalid_properties.push('invalid value for "ticket_url", the character length must be smaller than or equal to 2000.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@ticket_url.nil? && @ticket_url.to_s.length > 2000
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] ticket_url Value to be assigned
    def ticket_url=(ticket_url)
      if !ticket_url.nil? && ticket_url.to_s.length > 2000
        fail ArgumentError, 'invalid value for "ticket_url", the character length must be smaller than or equal to 2000.'
      end

      @ticket_url = ticket_url
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          remote_id == o.remote_id &&
          name == o.name &&
          assignees == o.assignees &&
          due_date == o.due_date &&
          status == o.status &&
          description == o.description &&
          project == o.project &&
          ticket_type == o.ticket_type &&
          account == o.account &&
          contact == o.contact &&
          parent_ticket == o.parent_ticket &&
          attachments == o.attachments &&
          tags == o.tags &&
          remote_created_at == o.remote_created_at &&
          remote_updated_at == o.remote_updated_at &&
          completed_at == o.completed_at &&
          remote_data == o.remote_data &&
          remote_was_deleted == o.remote_was_deleted &&
          ticket_url == o.ticket_url &&
          priority == o.priority
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [id, remote_id, name, assignees, due_date, status, description, project, ticket_type, account, contact, parent_ticket, attachments, tags, remote_created_at, remote_updated_at, completed_at, remote_data, remote_was_deleted, ticket_url, priority].hash
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
        value
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
        klass = MergeTicketingClient.const_get(type)
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
