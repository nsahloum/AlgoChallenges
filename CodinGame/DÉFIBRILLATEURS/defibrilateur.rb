# Auto-generated code below aims at helping you parse
# the standard input according to the problem statement.

@lon = gets.chomp
@lat = gets.chomp
@lat[","] = "."
@lon [","] = "."

@n = gets.to_i
i = 0
j = 0
b = - 1
@array_x = []
@array_y = []
@array_d = []
@list_defib = []


def distance

    @x = (@defib[4].to_f - @lon.to_f)*Math.cos((@defib[5].to_f+@lat.to_f)/2)
    @y = @defib[5].to_f-@lat.to_f
    @d = ((@x**2+@y**2)**1/2)*6371
    @array_x = @array_x << @x
    @array_y = @array_y << @y
    @array_d = @array_d << @d
end

@n.times do

    @defib = gets.chomp.split(";")
    @defib.map!{ |x| x.gsub(',' , '.') }
    distance
    @list_defib = @list_defib << @defib

end


@index = @array_d.index(@array_d.min)

#STDERR.puts (3.87952263361082-3.879483)*Math.cos((43.6071285339217+43.608177)/2)
STDERR.puts @array_d
puts @list_defib[@index][1]