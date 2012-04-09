class Role < ActiveRecord::Base
  has_many :users
  attr_accessible :name, :users_count

  validates_uniqueness_of :name
  
end
