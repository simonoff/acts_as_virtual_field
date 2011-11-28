module ActsAsVirtualField
  class Phone < Base
    REGEXP = /^[+\-\/0-9]+$/
    
    def self.to_formtastic(*args)
      options = args.extract_options!
      options.merge!(:as => :phone)
      options
    end
    
  end
end