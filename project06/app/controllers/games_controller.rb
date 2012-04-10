class GamesController < ApplicationController
  # GET /games
  # GET /games.json
  def index
    @games = Game.paginate :page => params[:page], :order => 'created_at desc', :per_page => 10

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @games }
    end
  end

end
