# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Emanuel', :city => cities.first)
(1..10).each do | articles |
	Article.create(:title => 'Lorem Ipsum', :author => 'Robert Frost', :body => 'Robert Frost was born in San Diego on...', :n_edited => '0')
end