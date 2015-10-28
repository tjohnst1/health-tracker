class Exercise < ActiveRecord::Base
  validates :type, presence: true
end
