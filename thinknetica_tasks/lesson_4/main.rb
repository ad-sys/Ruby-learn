require_relative 'route'
require_relative 'station'
require_relative 'train'

puts 'What would you like to do?'
puts "-- Type 'add train' to add a train."
puts "-- Type 'add station' to add a station."
puts "-- Type 'create route' to create a route."
puts "-- Type 'assign' to assign route to a train."
puts "-- Type 'add wagon' to add the wagon to the train."
puts "-- Type 'del wagon' to detach the wagon from the train."
puts "-- Type 'move forward' to move the train to next station."
puts "-- Type 'move rewind' to move the train to previous station."
puts "-- Type 'show stations' to show the list of the stations"
puts "-- Type 'show trains' to show the list of the trains on the station"

choice = gets.downcase
case choice
when 'add train'

end
