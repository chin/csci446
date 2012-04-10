class Game < ActiveRecord::Base
  belongs_to :user
  validates :name, :presence => true
  RATINGS = %w[Horrible Meh Good Amazing]
  def created_by?(user)
    self.user_id == user.id
  end
end
