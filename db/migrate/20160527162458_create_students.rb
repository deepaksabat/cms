class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :name
      t.text :address
      t.string :rollno
      t.date :dob
      t.string :phno

      t.timestamps null: false
    end
  end
end
