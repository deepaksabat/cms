class Department < ActiveRecord::Base

	has_many :lectures
	has_many :courses
	has_many :students
	belongs_to :college
end
