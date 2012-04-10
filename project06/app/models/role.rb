class Role < ActiveRecord::Base
  has_many :users
  attr_accessible :name, :users_count, :description
  
end
