class AddCaloriesTotalToFoods < ActiveRecord::Migration
  def change
    add_column :foods, :calories_total, :integer
  end
end
