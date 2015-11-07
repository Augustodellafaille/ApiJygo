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

  has_many :availabilities

  has_and_belongs_to_many :tags

  geocoded_by :full_street_address
  after_validation :geocode, if: ->(obj){ obj.address.present? and obj.address_changed? }

  def full_street_address
    [address, zip_code, city].compact.join(', ')
  end

end
