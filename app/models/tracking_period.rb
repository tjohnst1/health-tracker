class TrackingPeriod < ActiveRecord::Base
  has_many :foods
  has_many :exercises
  belongs_to :user

  def calories_total
    total = 0
    self.foods.each do |food|
      total = total + (food.calories_total)
    end
    self.calories_total = total
  end

end
