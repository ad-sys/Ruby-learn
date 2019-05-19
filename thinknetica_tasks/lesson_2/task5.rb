#Заданы три числа, которые обозначают число, месяц, год (запрашиваем у пользователя).
# Найти порядковый номер даты, начиная отсчет с начала года. Учесть, что год может быть високосным.
# (Запрещено использовать встроенные в ruby методы для этого вроде Date#yday или Date#leap?)
# Алгоритм опредления високосного года: http://www.adm.yar.ru/arch_serv/2000/Microsoft/content/vis.htm
puts "Please enter the date (DD)"
date = gets.to_f
puts "Please enter the month (MM)"
month = gets.to_f
puts "Please enter the year (YYYY)"
year = gets.to_f

days_in_each_month = %w [ 31 28 31 30 31 30 31 31 30 31 30 31 ]

leap_year =(year % 4 == 0) && !(year % 100 == 0) || (year % 400 == 0)
if leap_year
  days_in_each_month [1] = 29
end

Sequence number = 366 - ()
