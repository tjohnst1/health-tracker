class DailyStat < ActiveRecord::Base
  validates :calories, presence: true
end
