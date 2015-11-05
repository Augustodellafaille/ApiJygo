class Order < ActiveRecord::Base
  belongs_to :shopper, :class_name => 'User', :inverse_of => :passed_orders
  belongs_to :customer, :class_name => 'User', :inverse_of => :accepted_orders
  has_one :order_content
  has_one :review
end
