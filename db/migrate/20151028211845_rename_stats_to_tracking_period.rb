class RenameStatsToTrackingPeriod < ActiveRecord::Migration
  def change
    rename_table :stats, :tracking_periods
    rename_column :tracking_periods, :calories, :calorie_count
    rename_column :exercises, :stat_id, :tracking_period_id
    rename_column :foods, :stat_id, :tracking_period_id
  end
end
