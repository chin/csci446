class Admin::AdminController < ActionController::Base
  filter_access_to :all 
  before_filter :require_user
end