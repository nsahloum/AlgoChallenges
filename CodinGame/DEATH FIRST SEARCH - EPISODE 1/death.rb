STDOUT.sync = true # DO NOT REMOVE
# Auto-generated code below aims at helping you parse
# the standard input according to the problem statement.

# n: the total number of nodes in the level, including the gateways
# l: the number of links
# e: the number of exit gateways
@n, @l, @e = gets.split(" ").collect {|x| x.to_i}
@lien = []
@exit = []
@l.times do
    # n1: N1 and N2 defines a link between these nodes
    n1, n2 = gets.split(" ").collect {|x| x.to_i}
    @lien = @lien << [n1,n2]
end



@e.times do
    ei = gets.to_i # the index of a gateway node
    @exit = @exit << ei
end

@exit.sort!

@lien_max = []
@lien_min = []
@lien.each do |a,b|
        if a == @exit.max
            @lien_max = @lien_max << b
        elsif b == @exit.max
             @lien_max = @lien_max << a
        end
    end

 @lien.each do |m,n|
        if m == @exit.min
            @lien_min = @lien_min << n
        elsif n == @exit.min
             @lien_min = @lien_min << m
        end
    end
   STDERR.print @lien_min
# game loop
i = -1
@l_si = []
loop do

    si = gets.to_i # The index of the node on which the Skynet agent is positioned this turn
    @lien.each do |y,z|
        if y == si
            @l_si = @l_si << z
        elsif z == si
             @l_si = @l_si << y
        end
    end


        if @l_si.size < 2
            puts "#{si} #{@l_si[0]}"
        elsif @l_si.include? @exit[1]
        puts "#{si} #{@exit[1]}"
        @l_si = []
        elsif @lien_max.include? si
            puts "#{si} #{@exit.max}"
            @l_si = []
        elsif @l_si.include? @exit.max
        puts "#{si} #{@exit.max}"
        @l_si = []
        elsif @l_si.include? @exit.min
        puts "#{si} #{@exit.min}"
        @l_si = []
        elsif (@exit.max != @l_si.min) && (@lien_max.include? @l_si.min)
        puts "#{@exit.max} #{@l_si.min}"
        @l_si = []
        elsif (@exit.max != @l_si.max) && (@lien_max.include? @l_si.max)
        puts "#{@exit.max} #{@l_si.max}"
        @l_si = []
         elsif (@exit.min != @l_si.min) && (@lien_min.include? @l_si.min)
        puts "#{@exit.min} #{@l_si.min}"
        @l_si = []
        elsif (@exit.min != @l_si.max) && (@lien_min.include? @l_si.max)
        puts "#{@exit.min} #{@l_si.max}"
        @l_si = []
        elsif @exit.max == @l_si.min
        puts "#{si} #{@exit.max}"
        @l_si = []

    end

    # Write an action using puts
    # To debug: STDERR.puts "Debug messages..."

    #puts "0 #{i}" # Example: 0 1 are the indices of the nodes you wish to sever the link between
end