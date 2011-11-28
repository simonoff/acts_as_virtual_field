module ActsAsVirtualField
  class Decimal < Base
    
    DIGITS = 2
    REGEXP = /^\d+(\,\d{1,2})?$/
    
    def set_value
      @value = ::BigDecimal.new(@original_value.gsub(/,/,'.'),DIGITS)
    end
    
    def to_s
      @value.to_s.gsub(/\./,',')
    end
    
    def self.to_formtastic(*args)
      options = args.extract_options!
      options.merge!(:as => :numeric)
      options
    end
    
  end
end