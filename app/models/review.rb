class Review < ActiveRecord::Base
  belongs_to :giver, :class_name => 'User'
  belongs_to :receiver, :class_name => 'User'

  validates :giver_id, presence: true
  validates :receiver_id, presence: true
  validates :content, presence: true
end
