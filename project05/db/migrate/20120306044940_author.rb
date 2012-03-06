class Author < ActiveRecord::Migration
  def up
    remove_column :articles, :author
    add_column :articles, :author_id, :integer
  end


  def down
  end
end
