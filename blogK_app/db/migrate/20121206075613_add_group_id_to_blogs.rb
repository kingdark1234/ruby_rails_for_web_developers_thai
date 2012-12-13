class AddGroupIdToBlogs < ActiveRecord::Migration
  def change
    add_column :blogs, :group_id, :integer
  end
end
