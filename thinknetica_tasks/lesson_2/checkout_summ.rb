#Сумма покупок. Пользователь вводит поочередно название товара, цену за единицу и кол-во купленного товара
# (может быть нецелым числом). Пользователь может ввести произвольное кол-во товаров до тех пор, пока не введет "стоп"
# в качестве названия товара. На основе введенных данных требуетеся:                                                                                                                                                                                                                                                                                      Заполнить и вывести на экран хеш, ключами которого являются названия товаров, а значением - вложенный хеш, содержащий цену за единицу товара и кол-во купленного товара. Также вывести итоговую сумму за каждый товар.
# Вычислить и вывести на экран итоговую сумму всех покупок в "корзине".
# Заполнить и вывести на экран хеш, ключами которого являются названия товаров, а значением - вложенный хеш, содержащий цену за единицу товара и кол-во купленного товара. Также вывести итоговую сумму за каждый товар.


cart = {}
total = 0
loop do
  puts "Please put in the product name (type stop to finish)"
  product = gets.chomp
  break if product.downcase == "stop"
  puts "Please put in the product quantity"
  quantity = gets.to_f
  puts "Please put in the product price for 1 piece"
  price = gets.to_f
  cart[product] = { price: price, quantity: quantity, total_price: price * quantity }
end
cart.each do |name, info|
    puts "Product: #{name}, quantity: #{info[:quantity]}, price per item: #{info[:price]}. "\
    "total price: #{info[:total_price]}"
  total += info[:total_price]
end
cart.each do |key, val|
  total += cart[key][:total_price]
end
puts "The grand total is #{total} dollars."





