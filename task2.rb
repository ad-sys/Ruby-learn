=begin
Площадь треугольника. Площадь треугольника можно вычислить, зная его основание (a) и высоту (h) по формуле: 1/2*a*h. Программа должна запрашивать основание и высоту треугольника и возвращать его площадь.
=end

print "Hi there! What is the height of your triangle (in cm)?"
a = gets.chomp.to_i

print "Cool, and what is the base of your triangle (in cm)?"
h = gets.chomp.to_i

area = 0.5*(a*h)

puts "Thanks for the info, based on your input, the triangle's area is #{area} cm"