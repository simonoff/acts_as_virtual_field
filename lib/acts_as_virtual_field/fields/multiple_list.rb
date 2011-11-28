module ActsAsVirtualField
  class MultipleList < List
    
    def value_valid?
      return false unless @original_value.is_a?(::Array)
      return false unless @original_value.present?
      intersection = @meta.keys & @original_value
      return false unless intersection.present?
      return false unless intersection.eql? @original_value
      true
    end
    
    def set_value
      @value = @original_value.inject({}) do |memo, key| 
        memo[key] = @meta[key]
        memo
      end
    end
    
    def self.to_formtastic(*args)
      options = args.extract_options!
      options.merge!(:as => :check_boxes)
      options
    end
    
  end
end