module ActsAsVirtualField
  module VirtualField
    class DateTime < Base
      LABEL = 'Time'
      VIEW_AS = :string
      HTML_OPTIONS = {
        :class => 'datetime-picker'
      }
    end
  end
end