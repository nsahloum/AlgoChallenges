# Auto-generated code below aims at helping you parse
# the standard input according to the problem statement.

@n = gets.to_i # Number of elements which make up the association table.
@q = gets.to_i # Number Q of file names to be analyzed.
@hash = {}
@hash_d = {}
@hash_u = {}
@n.times do
    # ext: file extension
    # mt: MIME type.
    ext, mt = gets.split(" ")
    @extd = ext.downcase
    @extu = ext.upcase
    @hash_d [@extd] = mt
    @hash_u [@extu] = mt
    @hash[ext] = mt
end
@q.times do
    @fname = gets.chomp # One file name per line.
    @point = @fname.index(".")
    if @fname.count(".") == 1
        @exti = @fname [@point+1..@fname.size]
    elsif @fname.include?("..")
        @exti = @fname [@point+2..@fname.size]
    elsif @fname.count(".") > 1
        @fname = @fname.reverse!
        @point = @fname.index(".")
        @exti = @fname[0..@point-1].reverse!
    elsif @fname.count(".") == 0
        @exti = "NO"
    end



    if @hash.has_key? @exti
        puts @hash[@exti]
    elsif @hash_d.has_key? @exti.downcase
        puts @hash_d[@exti.downcase]
    elsif @hash_u.has_key? @exti.upcase
        puts @hash_u[@exti.upcase]
    else
        puts "UNKNOWN"
    end
end

# Write an action using puts
# To debug: STDERR.puts "Debug messages..."

#puts "UNKNOWN" # For each of the Q filenames, display on a line the corresponding MIME type. If there is no corresponding type, then display UNKNOWN.

