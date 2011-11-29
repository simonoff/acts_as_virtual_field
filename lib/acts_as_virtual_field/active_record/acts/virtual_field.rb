module ActiveRecord
  module Acts #:nodoc:
    module VirtualField #:nodoc:
      
      def acts_as_virtual_field_for(column = :value, *args)
        options = args.extract_options!
        cattr_accessor :virtual_field_column, :virtual_field_association, :virtual_field_foreign_key
        self.virtual_field_association      = options[:class_name]   || 'VirtualField'
        self.virtual_field_column           = column
        self.virtual_field_foreign_key      = options[:foreign_key]  || 'virtual_field_id'
        
        belongs_to :virtual_field, 
          :class_name => self.virtual_field_association.to_s,
          :foreign_key => self.virtual_field_foreign_key.to_s
        
        include InstanceMethods
      end
      
      module InstanceMethods
        def formtastic_options
          field_type = self.virtual_field.field_type
          klass = "::ActsAsVirtualField::VirtualField::#{field_type}".constantize
          opts = {
            :label => self.virtual_field.label,
            :requried => self.virtual_field.required?,
            :as => klass.view_as
          }
          opts[:collection] = self.virtual_field.field_meta.split(/\r?\n/) if klass.collection?
          opts[:input_html] = klass.html_options if klass.has_html_options?
          opts
        end
      end
      
    end
  end
end

ActiveRecord::Base.extend ::ActiveRecord::Acts::VirtualField