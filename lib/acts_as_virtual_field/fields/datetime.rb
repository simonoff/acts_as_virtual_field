module ActsAsVirtualField
  class Datetime < Base
    REGEXP = /^(?<hours>\d{1,2}):(?<minutes>\d{1,2}) (?<day>\d{1,2}).(?<month>\d{1,2}).(?<year>\d{4})$/
    FORMAT = '%H:%M %d.%m.%Y'

    def set_value
      @value = ::DateTime.strptime(@original_value, FORMAT)
    end

    def to_s
      @value.strftime FORMAT
    end
    
    def self.to_formtastic(*args)
      options = args.extract_options!
      options.merge!(:as => :datetime)
      options
    end
    
  end
end