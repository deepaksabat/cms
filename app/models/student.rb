class Student < ActiveRecord::Base
 mount_uploader :avatar, AvatarUploader
	belongs_to :college
	belongs_to :department
	belongs_to :course
	has_many :classrooms
	has_many :lectures, through: :classrooms, deependent: :destroy
end
