module Formtastic
  module Helpers
    module InputHelper
      def virtual_input(method, options = {})
        base_options = @object.formtastic_options
        input(method, options.merge(base_options))
      end
    end
  end
end