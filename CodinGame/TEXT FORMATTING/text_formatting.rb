# Auto-generated code below aims at helping you parse
# the standard input according to the problem statement.

intext = gets.chomp

# Write an action using puts
# To debug: STDERR.puts "Debug messages..."
intext = intext.squeeze(",")
intext = intext.squeeze(" ")
intext = intext.squeeze(".")


i = 0

intext.size.times do
    if (intext[i] == "," || intext[i] == "." || intext[i] == ";" ) && i < intext.size && intext[i+1] != " " 
        intext [i] = intext[i] + " "
    end
    if intext[i].nil? == false && (i == 0 || (intext[i-1] == " " && intext[i-2] == "."))
        intext[i] = intext[i].upcase 
    end
    if (intext[i] == "," || intext[i] == "." ) && intext[i-1] == " "
        intext[i-1] = ""
    end
    if intext[(intext.size)-1] == " "
        intext[(intext.size)-1] = ""
    end
    if intext[i].nil? == false && i > 0 && intext[i-2] != "." && intext[i].upcase == intext[i]
        intext[i] = intext[i].downcase
    end
    i += 1
end

intext = intext.squeeze(",")
intext = intext.squeeze(" ")
intext = intext.squeeze(".")

puts intext