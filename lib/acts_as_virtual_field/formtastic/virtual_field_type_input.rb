module Formtastic
  module Inputs
    class VirtualFieldTypeInput < Formtastic::Inputs::SelectInput
      def collection_from_options
        ::ActsAsVirtualField::VirtualField.types
      end
    end
  end
end