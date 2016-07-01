class AddUserIdToDiets < ActiveRecord::Migration
  def change
    add_column :diets, :user_id, :integer
  end
end
