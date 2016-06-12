class College < ActiveRecord::Base
  mount_uploader :avatar, AvatarUploader
	has_many :courses
	has_many :departments
	has_many :lectures
	has_many :students
	belongs_to :user
end
