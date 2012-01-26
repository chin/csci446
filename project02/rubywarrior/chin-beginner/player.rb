class Player
	@prev_health
	
	def play_turn(warrior)
		if warrior.feel.empty?
			if warrior.health < 20
				if @prev_health >= warrior.health
                                        warrior.walk!
                                else
					warrior.rest!
				end
			else
				warrior.walk!
			end
		else
			#if  warrior.health < 20
                        #	if @prev_health > warrior.health
                         #       	warrior.attack!
                        #	end
			warrior.attack!
		end
		@prev_health = warrior.health
	end
end
