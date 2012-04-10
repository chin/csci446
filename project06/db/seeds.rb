# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Emanuel', :city => cities.first)
Role.create!(:name => 'admin', :description => 'System admin. Full access.')
User.create!(:username => 'administrator', :password => 'password', :password_confirmation => 'password', :first_name => 'Malcolm', :last_name => 'X', :email => 'admin@gamez.com', :role_id => Role.find_or_create_by_name("admin").id)
Role.create!(:name => 'member', :description => 'Site member')
User.create!(:username => 'member', :password => 'password', :password_confirmation => 'password', :first_name => 'Spike', :last_name => 'Lee', :email => 'member@gamez.com', :role_id => Role.find_or_create_by_name("member").id)
(1..29).each do |f|
  Game.create!(:name => 'Lemmings', :rating => 'Amazing', :user_id => 1)
end