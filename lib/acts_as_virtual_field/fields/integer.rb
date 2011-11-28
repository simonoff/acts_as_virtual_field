module ActsAsVirtualField
  module VirtualField 
    class Integer < Base
      LABEL = 'Integer'
      VIEW_AS = :numeric
    end
  end
end