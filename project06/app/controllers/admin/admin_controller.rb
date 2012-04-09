class Admin::AdminController < ActionController::Base
  filter_access_to :all 
end