class AddUserIdStatsIdAndExercisesId < ActiveRecord::Migration
  def change
    add_column :stats, :user_id, :integer
    add_column :exercises, :stat_id, :integer
    add_column :foods, :stat_id, :integer
  end
end
