STDOUT.sync = true # DO NOT REMOVE
# Auto-generated code below aims at helping you parse
# the standard input according to the problem statement.

# w: width of the building.
# h: height of the building.
@w, @h = gets.split(" ").collect {|x| x.to_i}
@n = gets.to_i # maximum number of turns before game over.
@x0, @y0 = gets.split(" ").collect {|x| x.to_i}
@x = @x0
@y = @y0
@x1 = 0
@y1 = 0
@x2 = @w - 1
@y2 = @h - 1

# game loop
loop do
    bomb_dir = gets.chomp
    if bomb_dir.include? "U"
        @y2 = @y - 1
    elsif bomb_dir.include? "D"
        @y1 = @y + 1
    end

    if bomb_dir.include? "L"
        @x2 = @x - 1
        elsif bomb_dir.include? "R"
        @x1 = @x + 1
    end

    @x = @x1 + (@x2 - @x1)/2
    @y = @y1 + (@y2 - @y1) / 2

    puts "#{@x} #{@y}"


    # Write an action using puts
    # To debug: STDERR.puts "Debug messages..."
    STDERR.puts bomb_dir

    # the location of the next window Batman should jump to.
end