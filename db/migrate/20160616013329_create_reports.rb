class CreateReports < ActiveRecord::Migration
  def change
    create_table :reports do |t|
      t.string :user_id
      t.string :blood_gluclose_levels
      t.string :activity
      t.string :diet

      t.timestamps null: false
    end
  end
end
