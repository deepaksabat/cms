class AddAvatarToColleges < ActiveRecord::Migration
  def change
    add_column :colleges, :avatar, :string
  end
end
