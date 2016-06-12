class AddColumn < ActiveRecord::Migration
  def change
  	add_column :departments, :college_id, :integer
  	add_column :courses, :college_id, :integer
  	add_column :lectures, :college_id, :integer
  	add_column :students, :college_id, :integer
  	add_column :lectures, :department_id, :integer
  	add_column :students, :course_id, :integer
  	add_column :students, :department_id, :integer
  	add_column :users, :admin, :boolean
  	add_column :colleges, :user_id, :integer
  end
end
