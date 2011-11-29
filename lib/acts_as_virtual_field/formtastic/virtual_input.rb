module Formtastic
  module Inputs
    class VirtualFieldInput
      include Formtastic::Inputs::Base
      def to_html
        base_options = @object.formtastic_options
        @options = @options.merge(base_options)
        klass = "Formtastic::Inputs::#{@options[:as].to_s.camelize}Input".constantize
        klass.new(@builder, @template, @object, @object_name, @method, @options).to_html
      end
    end
  end
end