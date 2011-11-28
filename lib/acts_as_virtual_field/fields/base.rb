module ActsAsVirtualField
  module VirtualField
    class Base
      class << self
                        
        def view_as
          self::VIEW_AS || :string
        end
      
        def has_html_options?
          self::HTML_OPTIONS || false
        end
      
        def html_options
          self::HTML_OPTIONS
        end
        
        def label
          self::LABEL || ''
        end
        
        def collection?
          false
        end
      end
    end
  end
end