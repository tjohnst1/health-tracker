class CreateFoods < ActiveRecord::Migration
  def change
    create_table :foods do |t|
      t.column :name, :string
      t.column :calories_per_serving, :integer
      t.column :servings, :integer
      t.timestamps null: false
    end
  end
end
