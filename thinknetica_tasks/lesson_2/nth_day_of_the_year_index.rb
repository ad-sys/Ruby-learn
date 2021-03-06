# frozen_string_literal: true

# Заданы три числа, которые обозначают число, месяц, год (запрашиваем у пользователя).
# Найти порядковый номер даты, начиная отсчет с начала года. Учесть, что год может быть високосным.
# (Запрещено использовать встроенные в ruby методы для этого вроде Date#yday или Date#leap?)
# Алгоритм опредления високосного года: www.adm.yar.ru
print 'Day (DD): '
day = gets.to_i
print 'Month (MM): '
month = gets.to_i
print 'Year (YYY): '
year = gets.to_i

months = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]

leap_year = (year % 4 == 0) && (year % 100 != 0) || (year % 400 == 0)

months[1] = 29 if leap_year

count = day + months.take(month - 1).sum

puts "From the beginning of the year: #{count} days passed."
