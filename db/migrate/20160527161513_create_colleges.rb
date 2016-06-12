class CreateColleges < ActiveRecord::Migration
  def change
    create_table :colleges do |t|
      t.string :name
      t.text :address
      t.string :phno
      t.string :website

      t.timestamps null: false
    end
  end
end
