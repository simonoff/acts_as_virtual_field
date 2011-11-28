module ActsAsVirtualField
  module VirtualField
    class Phone < Base
      LABEL = 'Phone'
      VIEW_AS = :phone
    end
  end
end