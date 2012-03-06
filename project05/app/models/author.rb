class Author < ActiveRecord::Base
  has_many :articles
  has_attached_file :photo, :styles => { :small => "150x150>" }
  validates_format_of :name, :without => /Pat/
end
