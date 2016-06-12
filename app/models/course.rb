class Course < ActiveRecord::Base

	has_many :students
	belongs_to :department
	belongs_to :college
end
