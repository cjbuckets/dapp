class CreateDiets < ActiveRecord::Migration
  def change
    create_table :diets do |t|
      t.string :meal
      t.string :carbs

      t.timestamps null: false
    end
  end
end
