class Blog < ActiveRecord::Base
  attr_accessible :body, :title , :group_id
  belongs_to :user
  belongs_to :group
  validates  :body, :title, :group_id, presence: true

  has_many :comments, as: :commentable

  def self.by_group(group_name)
  	joins(:group).where(groups: { group_name: group_name})
  end

end
