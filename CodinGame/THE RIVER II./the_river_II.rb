# Auto-generated code below aims at helping you parse
# the standard input according to the problem statement.

r_1 = gets.to_i

# Write an action using puts
# To debug: STDERR.puts "Debug messages..."
k = r_1
b = 0
while k >= (r_1 - 10*Math.log(r_1, 10))
i = k
    while i <= r_1
        a = 0
        sum = 0
        i = i.to_s
        i.size.times do
            sum = i[a].to_i + sum
            a += 1
        end
        i = i.to_i + sum
        if i == r_1
            b += 1
            break
        end
    end
if b == 1
    break
end
k -= 1 
end

if b > 0
    puts "YES"
else
    puts "NO"
end


