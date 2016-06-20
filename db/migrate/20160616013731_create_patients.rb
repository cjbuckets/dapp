class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.string :user_id
      t.string :name
      t.string :email
      t.string :password

      t.timestamps null: false
    end
  end
end
