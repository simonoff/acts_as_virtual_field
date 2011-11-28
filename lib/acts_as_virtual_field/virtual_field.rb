module ActsAsVirtualField
  module VirtualField
    autoload :Base,         'acts_as_virtual_field/fields/base'
    autoload :Integer,      'acts_as_virtual_field/fields/integer'
    autoload :String,       'acts_as_virtual_field/fields/string'
    autoload :Text,         'acts_as_virtual_field/fields/text'
    autoload :Decimal,      'acts_as_virtual_field/fields/decimal'
    autoload :Date,         'acts_as_virtual_field/fields/date'
    autoload :DateTime,     'acts_as_virtual_field/fields/datetime'
    autoload :Mail,         'acts_as_virtual_field/fields/mail'
    autoload :List,         'acts_as_virtual_field/fields/list'
    autoload :SingleList,   'acts_as_virtual_field/fields/single_list'
    autoload :MultipleList, 'acts_as_virtual_field/fields/multiple_list'
    autoload :Phone,        'acts_as_virtual_field/fields/phone'
    autoload :PostalCode,   'acts_as_virtual_field/fields/postal_code'
    
    extend self
    
    def excludes
      [:Base, :List]
    end

    def types
      (self.constants - self.excludes).map do |submodule|
        [submodule.to_s, self.const_get(submodule)::LABEL.to_s]
      end
    end
    
  end
end