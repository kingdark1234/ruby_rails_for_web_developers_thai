class AddBlogTypeToBlogs < ActiveRecord::Migration
  def change
    add_column :blogs, :blog_type, :string
  end
end
