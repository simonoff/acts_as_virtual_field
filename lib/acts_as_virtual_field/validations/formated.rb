module Fields
  module Validations
    module Formated

      def validates_field_value_format_of(*attr_names)
        validates_with FieldsFormatValidator, _merge_attributes(attr_names)
      end

      class FieldsFormatValidator < ActiveModel::EachValidator
        def validate_each(record, attribute, value)
          normal_value = Yajl::Parser.parse(value || '')
          unless normal_value.empty?
            klass = "::Fields::#{record.field_type}".constantize
            begin
              args = case record.field_type
              when "SingleList", "MultipleList"
                [record.field_meta, value]
              else
                [normal_value]
              end
              klass.new(*args)
            rescue
              record.errors[:base] << (options[:message] || "has broken format (must be #{record.field_type})")
            end
          end
        end
      end
    end
  end
end