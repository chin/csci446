class Article < ActiveRecord::Base
	validates :title, :presence => true
	validates :author, :presence => true
	validates :body, :presence => true
	validates_format_of :author, :without => /pat/
end
