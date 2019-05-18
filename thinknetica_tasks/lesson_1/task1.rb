=begin
Идеальный вес. Программа запрашивает у пользователя имя и рост и выводит идеальный вес по формуле <рост> - 110, после чего выводит результат пользователю на экран с обращением по имени. Если идеальный вес получается отрицательным, то выводится строка "Ваш вес уже оптимальный"
=end
	
print "Hi there! What is your name?"
name = gets.chomp

puts "Thanks a lot #{name}" ",and what is your height (cm)?"
puts "Put it in, and I will calculate your ideal weight in just a sec:)"
height = gets.to_i

ideal_weight = height - 110
if ideal_weight <= 0
  puts "wow, #{name}, your weight is already optimal"
else
  puts "Got it #{name}, well, your ideal weight is #{ideal_weight} kilos then."
end

