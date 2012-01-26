class Player
	@previous_health
	def play_turn(warrior)
		@previous_health = warrior.health
		if @previous_health > warrior.health
			warrior.rest!
		elsif warrior.feel.empty?
			if warrior.health != 20
				warrior.rest!
			else
				warrior.walk!
			end
		else
			warrior.attack!
		end
	end
end
