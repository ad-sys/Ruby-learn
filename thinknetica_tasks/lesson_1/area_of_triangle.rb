# frozen_string_literal: true

# Площадь треугольника. Площадь треугольника можно вычислить, зная его основание (a) и высоту (h) по формуле: 1/2*a*h. Программа должна запрашивать основание и высоту треугольника и возвращать его площадь.

print 'Hi there! What is the height of your triangle (in cm)?'
base = gets.to_i

print 'Cool, and what is the base of your triangle (in cm)?'
height = gets.to_i

area = 0.5 * base * height

puts "Thanks for the info, based on your input, the triangle's area is #{area} cm"
