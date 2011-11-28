module Fields
  class Integer < Base
    REGEXP = /^[+-]?\d+$/
    
    def set_value
      @value = @match[0].to_i
    end
    
    def self.to_formtastic(*args)
      options = args.extract_options!
      options.merge!(:as => :numeric)
      options
    end
    
  end
end