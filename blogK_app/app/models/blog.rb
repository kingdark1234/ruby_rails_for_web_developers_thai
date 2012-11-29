class Blog < ActiveRecord::Base
  attr_accessible :body, :title , :group
  belongs_to :user
  belongs_to :blogtable, polymorphic: true
  validates :user, :body, :title, :group, presence: true

  has_many :comments, as: :commentable


end
