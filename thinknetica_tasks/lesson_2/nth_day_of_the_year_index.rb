#Заданы три числа, которые обозначают число, месяц, год (запрашиваем у пользователя).
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

if leap_year
  months[1] = 29
end

count = 0
for i in 0..month-2
  count += months[i]
end
count += day

puts "From the beginning of the year: #{count} days passed."