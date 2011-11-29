module ActsAsVirtualField
  module VirtualField
    class Base
      class << self
                        
        def view_as
          self::VIEW_AS rescue :string
        end
      
        def has_html_options?
          self::HTML_OPTIONS rescue false
        end
      
        def html_options
          self::HTML_OPTIONS
        end
        
        def label
          self::LABEL rescue ''
        end
        
        def collection?
          false
        end
      end
    end
  end
end