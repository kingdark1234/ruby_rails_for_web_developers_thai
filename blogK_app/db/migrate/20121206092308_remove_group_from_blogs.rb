class RemoveGroupFromBlogs < ActiveRecord::Migration
  def up
    remove_column :blogs, :group
  end

  def down
    add_column :blogs, :group, :string
  end
end
