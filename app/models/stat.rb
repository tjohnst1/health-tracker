class Stat < ActiveRecord::Base
  validates :calories, presence: true
end
