module ActsAsVirtualField
  class SingleList < List
    
    def value_valid?
      return false unless @original_value.is_a?(::String)
      return false unless @meta.has_key? @original_value
      true
    end
    
    def set_value
      @value = {@original_value => @meta[@original_value]}
    end
    
    def self.to_formtastic(*args)
      options = args.extract_options!
      options.merge!(:as => :select)
      options
    end
    
  end
end