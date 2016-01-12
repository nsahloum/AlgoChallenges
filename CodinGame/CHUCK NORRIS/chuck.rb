# Auto-generated code below aims at helping you parse
# the standard input according to the problem statement.

@message = gets.chomp
@n = @message.size

# Write an action using puts
# To debug: STDERR.puts "Debug messages..."

    @letter_bi =  @message.unpack('B*')
    i = -1
    a = 0
    @complet = ""
    while i < @message.size do
        i = i + 1
        @complet = @complet << @letter_bi[i].to_s
    end
    j = - 1
    while j < @complet.size
        j = j + 1
        if j%7 == 0
            @complet[j] = ""
        end
    end
    #if @complet.size <= 6
        #@complet = "0" << @complet
    #end
    if @complet[0] == "0"
            print "00 0"
        end
    if @complet[0] == "1"
            print "0 0"
    end

    @result = ""
    @complet.each_char do |x|
        a = a + 1
        if @complet[a]=="0" && x == "1"
            @result = @result << " 00 0"
        end
        if @complet[a]=="0" && x == "0"
            @result = @result << "0"
        end
        if @complet[a]=="1" && x == "0"
            @result = @result << " 0 0"
        end
        if @complet[a]=="1" && x == "1"
            @result = @result << "0"
        end
    end
    puts @result
    STDERR.puts @complet