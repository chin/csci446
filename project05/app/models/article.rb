class Article < ActiveRecord::Base
	validates :title, :presence => true
	validates :author, :presence => true
	validates :body, :presence => true
	validates_format_of :author, :without => /Pat/

    def self.search(page)
      paginate :page => page, :per_page => 10
    end
end
