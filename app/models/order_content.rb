class OrderContent < ActiveRecord::Base
  belongs_to :order
  has_and_belongs_to_many :products
end
