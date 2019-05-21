#Заданы три числа, которые обозначают число, месяц, год (запрашиваем у пользователя).
# Найти порядковый номер даты, начиная отсчет с начала года. Учесть, что год может быть високосным.
# (Запрещено использовать встроенные в ruby методы для этого вроде Date#yday или Date#leap?)
# Алгоритм опредления високосного года: http://www.adm.yar.ru/arch_serv/2000/Microsoft/content/vis.htm
print 'Day (DD): '
day = gets.chomp.to_f
print 'Month (MM): '
month = gets.chomp.to_f
print 'Year (YYY): '
year = gets.chomp.to_f

months = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]

leap_year = (year % 4 == 0) && (year % 100 != 0) || (year % 400 == 0)
if leap_year
  months[1] = 29
end

days_gone = 0
months_gone = month.to_i - 2

months[0..months_gone].each { |i| days_gone +=i }

count = day.to_i + days_gone



puts "From the beggining of the year: #{count} days passed."
