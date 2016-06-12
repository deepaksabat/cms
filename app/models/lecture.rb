class Lecture < ActiveRecord::Base

	belongs_to :college
	belongs_to :department
	has_many :classrooms
	has_many :students, through: :classrooms, deependent: :destroy
end
