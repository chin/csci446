class CreateRoles < ActiveRecord::Migration
  def change
    create_table :roles do |t|
      t.text :name

      t.timestamps
    end
  end
end
