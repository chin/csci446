class ChangeColumnName < ActiveRecord::Migration
  def up
  end
  
  def change
    rename_column :users, :hased_password, :hashed_password
  end
  
  def down
  end
end
