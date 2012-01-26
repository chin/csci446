class Player
	@prev_health
	
	def play_turn(warrior)
		if warrior.health < 20
			if @prev_health > warrior.health
				if warrior.feel.empty?				
					warrior.walk!
				else
					warrior.attack!
				end
			else 
				warrior.rest!
			end
		else
			if warrior.feel.empty?				
				warrior.walk!
			else
				warrior.attack!
			end
		end
		@prev_health = warrior.health
	end
end
