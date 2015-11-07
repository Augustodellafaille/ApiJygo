class User < ActiveRecord::Base
  # Include default devise modules.
  devise :database_authenticatable, :registerable,
          :recoverable, :rememberable, :trackable, :validatable#, :confirmable, :omniauthable
  include DeviseTokenAuth::Concerns::User

  has_many :passed_orders, :class_name => 'Order', :foreign_key => 'customer_id'
  has_many :accepted_orders, :class_name => 'Order', :foreign_key => 'shopper_id'

  has_many :given_reviews, :class_name => 'Review', :foreign_key => 'giver_id'
  has_many :reveived_reviews, :class_name => 'Review', :foreign_key => 'receiver_id'
  has_many :shoppers, :through => :passed_orders
  has_many :customers, :through => :accepted_orders

  has_and_belongs_to_many :skills
end
