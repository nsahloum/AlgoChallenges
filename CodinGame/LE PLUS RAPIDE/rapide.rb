# Auto-generated code below aims at helping you parse
# the standard input according to the problem statement.

n = gets.to_i
x = []
temps = []
n.times do
    t = gets.chomp
    temps = temps << t
    a = t.split(":")
    b = a[0].to_i*3600
    c = a[1].to_i*60
    d = a[2].to_i + b + c
    x = x << d
end

puts temps[x.index(x.min)]

# Write an action using puts
# To debug: STDERR.puts "Debug messages..."

