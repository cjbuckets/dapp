class AddDateToDiet < ActiveRecord::Migration
  def change
    add_column :diets, :date, :string
  end
end
