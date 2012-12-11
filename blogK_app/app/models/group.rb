class Group < ActiveRecord::Base
  attr_accessible :group_name, :group_permission

  has_many :blogs
end
