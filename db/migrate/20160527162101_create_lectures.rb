class CreateLectures < ActiveRecord::Migration
  def change
    create_table :lectures do |t|
      t.string :name
      t.text :address
      t.string :phno

      t.timestamps null: false
    end
  end
end
