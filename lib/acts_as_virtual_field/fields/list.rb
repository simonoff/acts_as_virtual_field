module ActsAsVirtualField
  class List < Base
    
    def self.collection?
      true
    end
    
    def initialize(meta, value)
      raise unless meta.is_a?(::String)
      raise unless value.is_a?(::String)
      @original_value = Yajl::Parser.parse(value)
      @meta = Yajl::Parser.parse(meta)
      raise unless @meta.is_a?(::Hash)
      raise unless value_valid?
      set_value
    end
    
  end
end