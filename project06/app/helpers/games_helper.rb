module GamesHelper
  def position(game)
    if current_user.nil?
      game.name
    elsif current_user.is_member?
      if game.created_by? current_user
        link_to game.name, edit_member_game_path(game)
      else
        game.name
      end
    else
      link_to game.name, edit_admin_game_path(game)
    end
  end

  def kinkyness(game)
    unless game.rating.blank?
      game.rating.humanize
    else
      "Unrated"
    end
  end

  def date(game)
    if current_user.nil? or (!game.created_by? current_user and !current_user.is_admin?)
        game.created_at.strftime("%b. %d, %Y") + ' by ' + game.user.first_name + ' ' + game.user.last_name
    elsif game.created_by? current_user
      if current_user.is_member?
        game.created_at.strftime("%b. %d, %Y") + ' by me'
      else
        %(#{game.created_at.strftime("%b. %d, %Y")} by #{link_to('me', edit_admin_user_path(game.user))}).html_safe
      end
    elsif current_user.is_admin?
         %(#{game.created_at.strftime("%b. %d, %Y")} by #{link_to(game.user.first_name + ' ' + game.user.last_name, edit_admin_user_path(game.user))}).html_safe
    end
  end

 
end
