class Game < ActiveRecord::Base
  belongs_to :user
  validates :name, :presence => true
  RATINGS = %w[Horrible Meh Good Amazing]
end
