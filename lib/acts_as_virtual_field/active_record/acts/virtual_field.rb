module ActiveRecord
  module Acts #:nodoc:
    module VirtualField #:nodoc:
      def acts_as_virtual_field(*args)
        options = args.extract_options!
        cattr_accessor :virtual_field_column, :virtual_field_association
        self.virtual_field_association      = options[:class]   || 'VirtualField'
        self.virtual_field_column           = options[:column]  || :value
        
        belongs_to :virtual_field, 
          :class_name => self.virtual_field_association.to_s,
          :foreign_key => 'virtual_field_id'
          :dependent => :delete_all
        
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
        end
      end
      
    end
  end
end