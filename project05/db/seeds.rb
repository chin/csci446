# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Emanuel', :city => cities.first)
Author.create(:name => 'Robert Frost')
Author.create(:name => 'Yo Mama')
Author.create(:name => 'Dracula')
(1..10).each do | articles |
	Article.create(:title => 'Lorem Ipsum', :author_id => 1, :body => 'Robert Frost was born in San Diego on...', :n_edited => '0')
end
(1..10).each do | articles |
	Article.create(:title => 'History of Uranus', :author_id => 2, :body => 'Robert Frost was born in San Diego on...', :n_edited => '0')
end
(1..10).each do | articles |
	Article.create(:title => 'There Will be Blood', :author_id => 3, :body => 'Robert Frost was born in San Diego on...', :n_edited => '0')
end