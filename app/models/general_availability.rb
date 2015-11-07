class GeneralAvailability < ActiveRecord::Base
  belongs_to :user

  validates :user_id, presence: true
  validates :weekday, presence: true
  validates :begin_time, presence: true
  validates :end_time, presence: true
end
