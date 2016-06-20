class AddTimeToLevel < ActiveRecord::Migration
  def change
    add_column :levels, :time, :string
  end
end
