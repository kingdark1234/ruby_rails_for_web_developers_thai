class CreateBlogs < ActiveRecord::Migration
  def change
    create_table :blogs do |t|
      t.string :group
      t.string :title
      t.text :body

      t.timestamps

      t.timestamps
    end
  end
end
