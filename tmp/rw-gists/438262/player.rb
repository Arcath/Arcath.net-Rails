class Player
	Directions = [:left, :right, :forward, :backward]
	
	FullHealth = 20
	
	def full_health?
		@warrior.health == FullHealth
	end
	
	def whats_out_there?
		@found = { "enemies" => [], "captives" => [], "empty" => [], "walls" => [] }
		i=0
		look_around.each do |felt|
			@found["enemies"].push(Directions[i]) if felt.enemy?
			@found["captives"].push(Directions[i]) if felt.captive?
			@found["empty"].push(Directions[i]) if felt.empty?
			@found["walls"].push(Directions[i]) if felt.wall?
			i+=1
		end
	end
	
	def perform_action
		unless there_is_a_bomb?
			if @found["enemies"].count >= 2 then
				@warrior.bind! @found["enemies"].first
			elsif @found["enemies"].count == 1
				@warrior.attack! @found["enemies"].first
			elsif @found["enemies"].count == 0 && @found["captives"].count != 0 then
				@warrior.rescue! @found["captives"].first
			elsif @found["enemies"].count == 0 && @found["captives"].count == 0 then
				if i_am_alone? then
					direction = @warrior.direction_of_stairs
				else
					direction = @warrior.direction_of @warrior.listen.first
					direction = invert direction if @warrior.feel(direction).stairs?
					direction = @found["empty"].first if @warrior.feel(direction).wall?
					direction = (@found["empty"] - [@warrior.direction_of_stairs]).first if direction == @previous
				end
				@warrior.walk! direction			
				@previous = invert(direction)
			end
		else
			want_to_go = there_is_a_bomb?
			if @found["empty"].include? want_to_go then
				@warrior.walk! want_to_go
				@previous = invert want_to_go
			else
				if @found["captives"].include? want_to_go then
					@warrior.rescue! want_to_go
				else
					cango = @found["empty"] - [@previous]
					if cango != [] then
						@warrior.walk! cango.first
					else
						if @found["enemies"].include? want_to_go then
							if @found["enemies"].count >= 2 then
								bindable = @found["enemies"] - [want_to_go]
								@warrior.bind! bindable.first
							else
								@warrior.attack! want_to_go
							end
						end
					end
				end
			end
		end
	end
	
	def there_is_a_bomb?
		@output = nil
		@warrior.listen.each do |felt|
			@output ||= @warrior.direction_of felt if felt.ticking?
		end
		@output
	end
	
	def safe_to_rest?
		@found["enemies"].count == 0
	end
	
	def needs_to_rest?
		@warrior.health <= FullHealth * 0.5
	end
	
	def needs_to_run?
		@warrior.health <= FullHealth * 0.15
	end
	
	def i_am_alone?
		@warrior.listen.count == 0
	end
	
	def play_turn(warrior)
		@warrior=warrior
		whats_out_there?
		if full_health?
			perform_action
		else
			if safe_to_rest? && needs_to_rest? && !(there_is_a_bomb?) then
				@warrior.rest!
			elsif needs_to_run? then
				@warrior.walk! (@previous || @found["empty"].first)
			else
				perform_action
			end
		end
	end
	
	private
	
	def look_around
		a = []
		Directions.map { |d| a.push(@warrior.feel d) }
		a
	end
	
	def invert(d)
		return :left if d == :right
		return :right if d == :left
		return :forward if d == :backward
		return :backward if d == :forward
	end
end