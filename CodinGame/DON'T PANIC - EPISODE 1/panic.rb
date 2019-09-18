STDOUT.sync = true # DO NOT REMOVE
# Auto-generated code below aims at helping you parse
# the standard input according to the problem statement.

# nb_floors: number of floors
# width: width of the area
# nb_rounds: maximum number of rounds
# exit_floor: floor on which the exit is found
# exit_pos: position of the exit on its floor
# nb_total_clones: number of generated clones
# nb_additional_elevators: ignore (always zero)
# nb_elevators: number of elevators
nb_floors, width, nb_rounds, exit_floor, exit_pos, nb_total_clones, nb_additional_elevators, nb_elevators = gets.split(" ").collect {|x| x.to_i}

ef = [exit_floor]
ep = [exit_pos]

nb_elevators.times do
    # elevator_floor: floor on which this elevator is found
    # elevator_pos: position of the elevator on its floor
    elevator_floor, elevator_pos = gets.split(" ").collect {|x| x.to_i}
    ef << elevator_floor.to_i
    ep << elevator_pos.to_i
end

elevators = Hash[ef.zip ep]

i = 0
# game loop
loop do
    # clone_floor: floor of the leading clone
    # clone_pos: position of the leading clone on its floor
    # direction: direction of the leading clone: LEFT or RIGHT
    clone_floor, clone_pos, direction = gets.split(" ")
    clone_floor = clone_floor.to_i
    clone_pos = clone_pos.to_i

    # Write an action using puts
    # To debug: STDERR.puts "Debug messages..."
    if i <= 3
    if i % 3 == 0
        if (clone_pos < elevators[clone_floor]  && direction == "LEFT") ||  (clone_pos > elevators[clone_floor] && direction == "RIGHT")
            puts "BLOCK"
        else
            puts "WAIT"
        end
    else
        puts "WAIT"
    end
    end

    if i > 3
        if (clone_pos < elevators[clone_floor]  && direction == "LEFT") ||  (clone_pos > elevators[clone_floor] && direction == "RIGHT")
            puts "BLOCK"
        else
            puts "WAIT"
        end
    end

i += 1
end