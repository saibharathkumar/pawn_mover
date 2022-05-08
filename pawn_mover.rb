DIRECTIONS = {"NORTH" => {"LEFT" => "WEST","RIGHT" => "EAST"},"EAST" => {"LEFT" => "NORTH","RIGHT" => "SOUTH"},"SOUTH" => {"LEFT" => "EAST","RIGHT" => "WEST"},"WEST" => {"LEFT" => "SOUTH","RIGHT" => "NORTH"}}
FACINGS = ["NORTH", "EAST", "WEST", "SOUTH"]
COLORS = ["BLACK", "WHITE"]

def take_command(msg = nil)
	if(msg)
		puts msg
	else		
		puts "please enter a command(valid commands --> PLACE, MOVE, LEFT, RIGHT, REPORT, EXIT(to exit))"
	end		
	move_pawn
end

def move_pawn
	@pawn_object
	command = gets.chomp
	if command === "PLACE"
		puts "please enter x position"
		# validate for integers
		# validate initial place position
		x_position = gets.chomp
		puts "please enter Y position"
		y_position = gets.chomp
		puts "please enter facing(NORTH, EAST, WEST, SOUTH)"
		facing_position = gets.chomp
		puts "please enter color(BLACK, WHITE)"
		color = gets.chomp
		@pawn_object = {"place" => {"x" => x_position.to_i, "y" => y_position.to_i, "facing" => facing_position, "color" => color}}
		puts @pawn_object
		take_command
	elsif command === "MOVE"
		# return "please pass 'place' command to move the pawn" unless pawn_placed?
		take_command("please pass 'PLACE' command to move the pawn") unless pawn_placed?
		puts "please enter the no.of positions to move the pawn"
		move_num = gets.to_i
		current_facing = @pawn_object["place"]["facing"]
		condition_on = "x" if current_facing === "EAST" || current_facing === "WEST"
		condition_on = "y" if current_facing === "NORTH" || current_facing === "SOUTH"
		
		if(!valid_move?(move_num, condition_on))
			take_command("It's an invalid move!!, please enter a command(valid commands --> PLACE, MOVE, LEFT, RIGHT, REPORT, EXIT(to exit))")
		end
		
		if current_facing === "NORTH" || current_facing === "SOUTH"
			@pawn_object["place"]["y"] = @pawn_object["place"]["y"] + move_num
		elsif current_facing === "EAST" || current_facing === "WEST"
			@pawn_object["place"]["x"] = @pawn_object["place"]["x"] + move_num
		end
		take_command
	elsif command === "LEFT"
		# return "please pass 'place' command to move the pawn to left" unless pawn_placed?
		take_command("please pass 'PLACE' command to move the pawn to left") unless pawn_placed?
		current_facing = @pawn_object["place"]["facing"]
		new_facing = DIRECTIONS[current_facing]["LEFT"]
		@pawn_object["place"]["facing"] = new_facing
		take_command
	elsif command === "RIGHT"
		# return "please pass 'place' command to move the pawn to right" unless pawn_placed?
		take_command("please pass 'PLACE' command to move the pawn to right") unless pawn_placed?
		current_facing = @pawn_object["place"]["facing"]
		new_facing = DIRECTIONS[current_facing]["RIGHT"]
		@pawn_object["place"]["facing"] = new_facing
		take_command
	elsif command === "REPORT"
		# return take_command("please pass 'place' command to get report of the pawn") unless pawn_placed?
		take_command("please pass 'PLACE' command to get report of the pawn") unless pawn_placed?
		puts @pawn_object["place"]["x"], @pawn_object["place"]["y"], @pawn_object["place"]["facing"], @pawn_object["place"]["color"] 
		take_command
	elsif command === "EXIT"
		exit_game	
	else
		puts "please enter valid command"
		take_command
	end
end

def pawn_placed?
	return false if @pawn_object === nil 
	return @pawn_object.key?("place") && @pawn_object.values_at("place").all?
end

def valid_move?(move_num, condition_on)
	return false if (@pawn_object["place"][condition_on].to_i + move_num.to_i) > 7
	return true
end

def exit_game
	puts "Thank you!!"
	exit
end
		
take_command