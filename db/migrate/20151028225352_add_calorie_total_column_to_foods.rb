class AddCalorieTotalColumnToFoods < ActiveRecord::Migration
  def change
    add_column :foods, :calorie_total, :integer
  end
end
