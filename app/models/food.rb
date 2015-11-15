class Food < ActiveRecord::Base
  before_save :tally_calories
  after_save :update_tracking_period
  validates :name, presence: true
  validates :calories_per_serving, presence: true
  validates :servings, presence: true
  belongs_to :tracking_period
  private
  def tally_calories
    self.calories_total = self.calories_per_serving * self.servings
  end
  def update_tracking_period
    TrackingPeriod.find(self.tracking_period_id).save
  end
end
