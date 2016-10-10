# Auto-generated code below aims at helping you parse
# the standard input according to the problem statement.

@l = gets.to_i
@h = gets.to_i
@t = gets.chomp
@enter = @t.upcase.split("")
@n = @enter.size
#@h.times do
   # @line = @line + 1
    #@row = gets.chomp
#end

# Write an action using puts
# To debug: STDERR.puts "Debug messages..."
@h.times do
    @row = gets.chomp
    @alpha = {
"A"=>@row [0..@l-1],
"B"=>@row [@l..2*@l-1],
"C"=>@row [2*@l..3*@l-1],
"D"=>@row [3*@l..4*@l-1],
"E"=>@row [4*@l..5*@l-1],
"F"=>@row [5*@l..6*@l-1],
"G"=>@row [6*@l..7*@l-1],
"H"=>@row [7*@l..8*@l-1],
"I"=>@row [8*@l..9*@l-1],
"J"=>@row [9*@l..10*@l-1],
"K"=>@row [10*@l..11*@l-1],
"L"=>@row [11*@l..12*@l-1],
"M"=>@row [12*@l..13*@l-1],
"N"=>@row [13*@l..14*@l-1],
"O"=>@row [14*@l..15*@l-1],
"P"=>@row [15*@l..16*@l-1],
"Q"=>@row [16*@l..17*@l-1],
"R"=>@row [17*@l..18*@l-1],
"S"=>@row [18*@l..19*@l-1],
"T"=>@row [19*@l..20*@l-1],
"U"=>@row [20*@l..21*@l-1],
"V"=>@row [21*@l..22*@l-1],
"W"=>@row [22*@l..23*@l-1],
"X"=>@row [23*@l..24*@l-1],
"Y"=>@row [24*@l..25*@l-1],
"Z"=>@row [25*@l..26*@l-1],
"?" => @row [26*@l..27*@l-1],

}
@alpha_key = @alpha.keys
i= 0
    @enter.each do |x|
        if @alpha_key.include? x
        print @alpha[x]
        i = i + 1
        if i == @n
            i = 0
            puts
        end
    else
        print @alpha["?"]
        i = i + 1
        if i == @n
            i = 0
            puts
        end
    end

    end
end

#STDERR.puts "#{@enter.sort & @alpha_key.sort}"
