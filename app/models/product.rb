class Product < ActiveRecord::Base
  belongs_to :category
  has_and_belongs_to_many :order_contents

  validates :name, presence: true
  validates :category, presence: true
end
