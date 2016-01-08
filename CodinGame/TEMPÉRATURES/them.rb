# Auto-generated code below aims at helping you parse
# the standard input according to the problem statement.

@n = gets.to_i # the number of temperatures to analyse
@temps = gets.chomp # the n temperatures expressed as integers ranging from -273 to 5526
@absolu = @temps.split(" ").map { |s| s.to_i }
@absolu_final = @temps.split(" ").map { |s| s.to_i.abs }
# Write an action using puts
# To debug: STDERR.puts "Debug messages..."

@a = @absolu_final.index(@absolu_final.min)
@min_1 = @absolu_final.min 

if @absolu == []
    puts "0"

elsif @absolu[@a] >= 0
puts @absolu[@a]

elsif @absolu[@a] <= 0 && @absolu.include?(@absolu[@a].abs)
    puts @absolu[@a].abs
else
    puts @absolu[@a]
end




STDERR.puts "#{@absolu}"