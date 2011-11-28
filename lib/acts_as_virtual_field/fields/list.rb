module ActsAsVirtualField
  module VirtualField
    class List < Base
      def self.collection?
        true
      end
    end
  end
end