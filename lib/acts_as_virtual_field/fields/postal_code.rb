module ActsAsVirtualField
  class PostalCode < Base
    REGEXP = /^\d{5}$/
  end
end