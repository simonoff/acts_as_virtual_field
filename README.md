# Description #

Rails3 plugin to define virtual field types on any column of model

# Usage #

class CustomerField < ActiveRecord::Base
  belongs_to :customer
  acts_as_virtual_field_for :value, :class_name => 'CustomerInfoField', :foreign_key => 'customer_info_field_id'
end