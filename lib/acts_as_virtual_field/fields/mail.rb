module ActsAsVirtualField
  require 'mail'
  class Mail < Base
    
    def check_value
      m = ::Mail::Address.new(@original_value)
      r = m.domain && m.address == @original_value
      t = m.__send__(:tree)
      r &&= (t.domain.dot_atom_text.elements.size > 1)
      raise unless r
    end
    
    def self.to_formtastic(*args)
      options = args.extract_options!
      options.merge!(:as => :email)
      options
    end
    
  end
end