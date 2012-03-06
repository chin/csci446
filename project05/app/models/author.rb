class Author < ActiveRecord::Base
  has_many :articles

  validates_format_of :name, :without => /Pat/
end
