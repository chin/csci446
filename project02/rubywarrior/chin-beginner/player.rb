class Player
	@prev_health
	
	def play_turn(warrior)
		if  @prev_health > warrior.health
			warrior.attack!
		elsif warrior.feel.empty?
			if warrior.health != 20
				warrior.rest!
			else
				warrior.walk!
			end
		else
			warrior.attack!
		end
		@prev_health = warrior.health
	end
end
