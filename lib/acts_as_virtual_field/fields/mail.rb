module ActsAsVirtualField
  module VirtualField
    class Mail < Base
      LABEL = 'EMail'
      VIEW_AS = :email
    end
  end
end