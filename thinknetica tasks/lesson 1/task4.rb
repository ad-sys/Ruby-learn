=begin 
Квадратное уравнение. Пользователь вводит 3 коэффициента a, b и с. Программа вычисляет дискриминант (D) и корни уравнения (x1 и x2, если они есть) и выводит значения дискриминанта и корней на экран. При этом возможны следующие варианты:
  Если D > 0, то выводим дискриминант и 2 корня
  Если D = 0, то выводим дискриминант и 1 корень (т.к. корни в этом случае равны)
  Если D < 0, то выводим дискриминант и сообщение 'Корней нет'
Подсказка: Алгоритм решения с блок-схемой (www.bolshoyvopros.ru). Для вычисления квадратного корня, нужно использовать 
=end

print 'Put 3 coefficients:'
puts  'coefficient A'
a = gets.to_f

puts 'coefficient B'
b = gets.to_f

puts 'coefficient C'
c = gets.to_f

d = b**2 - 4 * a * c
puts "Discriminant is #{d}"

if d < 0
  puts 'Equation root: none'

elsif d == 0
  x = -b / (2.0 * a)
  puts "x = #{x}"

  else
    x1 = (-b + Math.sqrt(d)) / 2 * a
    x2 = (-b - Math.sqrt(d)) / 2 * a
    puts "X1 = #{x1}"
    puts "X2 = #{x2}"
end

