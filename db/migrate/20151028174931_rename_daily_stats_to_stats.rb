class RenameDailyStatsToStats < ActiveRecord::Migration
  def change
    rename_table :daily_stats, :stats
  end
end
