module ActsAsVirtualField
  class Text < String
    
    def self.to_formtastic(*args)
      options = args.extract_options!
      options.merge(:as => :text)
      options
    end
  
  end
end