class User < ActiveRecord::Base
  belongs_to :role
  acts_as_authentic do |config|
     config.merge_validates_length_of_password_field_options :minimum => 6
  end
end
