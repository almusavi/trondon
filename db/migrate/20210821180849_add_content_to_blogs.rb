class AddContentToBlogs < ActiveRecord::Migration[6.1]
  def change
    add_column :blogs, :content, :string
  end
end
