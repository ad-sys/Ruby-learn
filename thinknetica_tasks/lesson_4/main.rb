require_relative 'route'
require_relative 'station'
require_relative 'train'

loop do
  puts "
					Select an action:

					1. Create station.
					2. Create train.
					3. Attach wagon to the train.
					4. Detach wagon of the train.
					5. Put the train station.
					6. View a list of stations.
					7. View a list of trains.
					8. Quit the program.
					"
  choice = gets.chomp.to_i
  case choice
  when '1'
    puts 'Please, put the train number, type and wagons quantity'



  end
end

choice = gets.downcase
case choice
when 'add train'
  puts 'Please, put the train number, type and wagons quantity'
 tr



end
