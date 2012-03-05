class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.string :author
      t.text :body
      t.datetime :date
      t.integer :n_edited

      t.timestamps
    end
  end
end
