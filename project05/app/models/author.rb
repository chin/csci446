class Author < ActiveRecord::Base
  has_many :articles
  has_attached_file :photo
  validates_format_of :name, :without => /Pat/
end
