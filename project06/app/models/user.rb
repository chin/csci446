class User < ActiveRecord::Base
  belongs_to :role
  has_many :games
  has_attached_file :photo
  acts_as_authentic do |config|
     config.merge_validates_length_of_password_field_options :minimum => 6
  end

  def is_member?
  	self.role.name.downcase.eql? "member"
  end

  def is_admin?
  	self.role.name.downcase.eql? "admin"
  end

end
