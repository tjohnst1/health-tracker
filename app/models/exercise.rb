class Exercise < ActiveRecord::Base
  validates :type, presence: true
  belongs_to :tracking_period
end
