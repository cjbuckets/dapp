class AddDateToExercise < ActiveRecord::Migration
  def change
    add_column :exercises, :date, :string
  end
end
