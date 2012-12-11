class Photo < ActiveRecord::Base
  attr_accessible :caption, :file, :processing, :user_id
  belongs_to :user
  has_many :comments, as: :commentable

  mount_uploader :file, ImageUploader
end
