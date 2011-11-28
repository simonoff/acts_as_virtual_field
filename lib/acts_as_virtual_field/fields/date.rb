module ActsAsVirtualField
  class Date < Base
    
    VIEW_AS = :string
    HTML_OPTIONS = {
      :class => 'date-picker'
    }
        
  end
end