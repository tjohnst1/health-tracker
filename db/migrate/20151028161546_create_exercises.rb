class CreateExercises < ActiveRecord::Migration
  def change
    create_table :exercises do |t|
      t.column :type, :string
      t.timestamps null: false
    end
  end
end
