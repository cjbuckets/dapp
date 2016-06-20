class CreateLevels < ActiveRecord::Migration
  def change
    create_table :levels do |t|
      t.string :user_id
      t.string :reading

      t.timestamps null: false
    end
  end
end
