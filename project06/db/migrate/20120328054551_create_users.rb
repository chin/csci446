class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :username
      t.string :email
      t.string :crypted_password
      t.string :password_salt
      t.string :persistence_token
      t.datetime :current_login_at
      t.datetime :last_login_at
      t.integer :role_id

      t.timestamps
    end
  end
end
