class AddDateToLevel < ActiveRecord::Migration
  def change
    add_column :levels, :date, :string
  end
end
