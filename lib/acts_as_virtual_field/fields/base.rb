module ActsAsVirtualField
  module VirtualField
    class Base
      class << self
        def view_as
          self.class.VIEW_AS || :string
        end
      
        def has_html_options?
          self.class.HTML_OPTIONS || false
        end
      
        def html_options
          self.class.HTML_OPTIONS
        end
      end
    end
  end
end