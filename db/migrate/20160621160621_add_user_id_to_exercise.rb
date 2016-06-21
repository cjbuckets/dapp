class AddUserIdToExercise < ActiveRecord::Migration
  def change
    add_column :exercises, :user_id, :string
  end
end
