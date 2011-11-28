module ActsAsVirtualField
  class Gender < Base
    GENDERS = {
      "male"    => I18n.t("genders.male", :default => "Male"), 
      "female"  => I18n.t("genders.female", :default => "Female"),
      "unknown" => I18n.t("genders.unknown", :default => "Unknown")
    }
    
    def check_value
      raise unless GENDERS.keys.include?(@original_value)
    end

    def self.for_select
      @genders ||= GENDERS.to_a.map(&:reverse)
    end

    def to_s
      GENDERS[@value]
    end
    
    def self.to_formtastic(*args)
      options = args.extract_options!
      options.merge!(:as => :select, :collection => for_select)
      options
    end
    
  end
end