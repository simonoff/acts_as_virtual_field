module ActsAsVirtualField
  module VirtualField
    autoload :Base,         'fields/base'
    autoload :Integer,      'fields/integer'
    autoload :String,       'fields/string'
    autoload :Text,         'fields/text'
    autoload :Decimal,      'fields/decimal'
    autoload :Date,         'fields/date'
    autoload :Datetime,     'fields/datetime'
    autoload :Mail,         'fields/mail'
    autoload :List,         'fields/list'
    autoload :SingleList,   'fields/single_list'
    autoload :MultipleList, 'fields/multiple_list'
    autoload :Phone,        'fields/phone'
    autoload :PostalCode,   'fields/postal_code'
    autoload :Country,      'fields/country'
    autoload :Currency,     'fields/country'
    autoload :Gender,       'fields/gender'
  end
end