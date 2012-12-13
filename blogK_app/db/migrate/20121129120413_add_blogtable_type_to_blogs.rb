class AddBlogtableTypeToBlogs < ActiveRecord::Migration
  def change
    add_column :blogs, :blogtable_id, :integer
    add_column :blogs, :blogtable_type, :string
  end
end
