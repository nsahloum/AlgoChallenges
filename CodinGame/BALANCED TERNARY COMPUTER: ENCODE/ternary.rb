# Auto-generated code below aims at helping you parse
# the standard input according to the problem statement.

n = gets.to_i

# Write an action using puts
# To debug: STDERR.puts "Debug messages..."
a = n.to_s(3)
x = n.to_s(3)
x = x.reverse!

i = 0

x.size.times do
if x[i] == "2"
    x[i] = "T"
    x[i+1] = (x[i+1].to_i + 1).to_s
end
if x[i] == "3"
     x[i] = "0"
     x[i+1] = (x[i+1].to_i + 1).to_s
end
i += 1
end

c = 0

if n < 0
    x.gsub!("1", "c")
    x.gsub!("T","b")
end

z = 0

x.size.times do
    if x[z] == "c"
        x[z] = "T"
    end
    if x[z] == "b"
        x[z] = "1"
    end
    z+=1
end

if x.include?('-')
    x.gsub!("-","")
end

STDERR.puts a
puts x.reverse!