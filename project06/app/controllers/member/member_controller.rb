class Member::MemberController < ActionController::Base
  filter_access_to :all 
  def index
  	@games = Game.all

  	respond_to do |format|
  		format.html
  		format.json { render :json => @games }
  	end
  end
end