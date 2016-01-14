# Auto-generated code below aims at helping you parse
# the standard input according to the problem statement.

@n = gets.to_i
@puis = []
@a = -1
@b = 0
@r = []
@n.times do
    pi = gets.to_i
    @puis = @puis << pi  
end
@puis = @puis.sort


     while @a < @puis.size-1 && @b < @puis.size-1 do

         @a= @a + 1
         @b = @b + 1
         
        @s = (@puis[@a] - @puis[@b]).abs
        @r = @r << @s
        end



puts @r.min



# Write an action using puts
#STDERR.puts @r_s

#puts "answer"