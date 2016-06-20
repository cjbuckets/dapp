class CreateExercises < ActiveRecord::Migration
  def change
    create_table :exercises do |t|
      t.string :activity
      t.string :duration

      t.timestamps null: false
    end
  end
end
