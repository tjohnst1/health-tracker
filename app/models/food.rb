class Food < ActiveRecord::Base
  validates :name, presence: true
  validates :calories_per_serving, presence: true
  validates :servings, presence: true
  belongs_to :tracking_period
  def calorieTotal
    self.calories_per_serving * self.servings
  end  
end
