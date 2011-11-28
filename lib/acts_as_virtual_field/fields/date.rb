module ActsAsVirtualField
  module VirtualField
    class Date < Base
      LABEL = 'Date'
      HTML_OPTIONS = {
        :class => 'date-picker'
      }
    end    
  end
end