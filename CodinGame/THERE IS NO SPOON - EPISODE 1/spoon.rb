STDOUT.sync = true # DO NOT REMOVE
# Don't let the machines win. You are humanity's last hope...

@width = gets.to_i # the number of cells on the X axis
@height = gets.to_i # the number of cells on the Y axis
@tab = []
@height.times do
    line = gets.chomp # width characters, each either 0 or .
    line = line.split('')
    @tab = @tab << line
end
@invert = @tab.transpose
@a = 0
@b = 0
@end = @width-1
@endH = @height-1
while @a < @height do
    while @b < @width do
        if @tab[@a][@b] == "0"
            @r = "#{@b} #{@a}"
            if @tab[@a].size > 1
            @slice = @tab[@a][@b+1..@end]
            else
            @slice = "1"
            end
            if @slice.include? "0"
                @c = @slice.index ("0")
                @r = @r << " #{@c+@b+1} #{@a}"
            else
                @r = @r << " -1 -1"
            end
            if @invert[@b].size > 1
            @slice2 = @invert[@b][@a+1..@endH]
            else
                @slice2 = "1"
            end
            if @slice2.include? "0"
                @d = @slice2.index ("0")
                @r = @r << " #{@b} #{@d+@a+1}"
            else
                @r = @r << " -1 -1"
            end
        end
        if @tab[@a][@b] == "0"
        puts @r
        end
        @b = @b + 1
    end
 @b = 0
@a = @a + 1
end



# Write an action using puts
# To debug: STDERR.puts "Debug messages..."


# Three coordinates: a node, its right neighbor, its bottom neighbor
STDERR.print @tab
