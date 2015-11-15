class AddCaloriesTotalToTrackingPeriods < ActiveRecord::Migration
  def change
    add_column :tracking_periods, :calories_total, :integer
  end
end
