class Article < ActiveRecord::Base
    belongs_to :author

	validates :title, :presence => true
	validates :author, :presence => true
	validates :body, :presence => true
	validates_format_of :author, :without => /Pat/
end
