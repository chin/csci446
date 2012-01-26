class Player
	@prev_health
	@forward_march = 0	
	def play_turn(warrior)
		if warrior.health < 9 
			if @prev_health > warrior.health
				warrior.walk!(:backward)
			else
				warrior.rest!
			end
		elsif warrior.health < 20
			if @prev_health > warrior.health
				if warrior.feel.empty?				
					warrior.walk!
				elsif warrior.feel.captive?
					warrior.rescue!
				else
					warrior.attack!
				end
			else 
				warrior.rest!
			end
		else
			unless @forward_march ==1 
				if warrior.feel(:backward).wall?
					@forward_march = 1
				else
					if warrior.feel(:backward).empty?				
						warrior.walk!(:backward)
					elsif warrior.feel(:backward).captive?
						warrior.rescue!(:backward)
					else
						warrior.pivot!
					end
				end
			else
				if warrior.feel.empty?				
					warrior.walk!
				elsif warrior.feel.captive?
					warrior.rescue!
				else
					warrior.attack!
				end
			end
		end
		@prev_health = warrior.health
	end
end
