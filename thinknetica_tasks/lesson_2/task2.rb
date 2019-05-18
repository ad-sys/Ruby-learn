my_array = Array.new
number = 0

loop do
  number += 5
  if number >= 10
    my_array.push(number)
    break if number >= 100
  end
end

for number in my_array
  puts number
end


