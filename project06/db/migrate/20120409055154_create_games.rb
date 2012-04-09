class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.text :name
      t.text :rating
      t.integer :user_id

      t.timestamps
    end
  end
end
