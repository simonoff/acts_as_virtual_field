module Fields
  module Validations
    module Required

      def validates_field_value_presence_of(*attr_names)
        validates_with FieldsRequiredValidator, _merge_attributes(attr_names)
      end

      class FieldsRequiredValidator < ActiveModel::EachValidator
        def validate_each(record, attribute, value)
          normal_value = Yajl::Parser.parse(value || '')
          if record.required? && normal_value.empty?
            record.errors[:base] << (options[:message] || "is required")
          end
        end
      end
    end
  end
end