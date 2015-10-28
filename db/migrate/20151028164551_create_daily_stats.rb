class CreateDailyStats < ActiveRecord::Migration
  def change
    create_table :daily_stats do |t|
      t.column :calories, :integer
      t.timestamps null: false
    end
  end
end
