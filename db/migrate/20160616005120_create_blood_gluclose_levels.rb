class CreateBloodGlucloseLevels < ActiveRecord::Migration
  def change
    create_table :blood_gluclose_levels do |t|
      t.integer :user_id
      t.string :reading

      t.timestamps null: false
    end
  end
end
