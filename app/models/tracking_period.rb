class TrackingPeriod < ActiveRecord::Base
  has_many :foods
  has_many :exercises
  def calorie_total
    total = 0
    self.foods.each do |food|
      total = total + (food.calories_per_serving * food.servings)
    end
    return total
  end
end
