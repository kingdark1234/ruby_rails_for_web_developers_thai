class RemoveBlogtableFromBlogs < ActiveRecord::Migration
  def change
    remove_column :blogs, :blogtable_id
    remove_column :blogs, :blogtable_type
  end
end
