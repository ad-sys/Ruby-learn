require_relative 'cargo_train'
require_relative 'cargo_wagon'
require_relative 'passenger_train'
require_relative 'passenger_wagon'
require_relative 'route'
require_relative 'station'
require_relative 'train'
require_relative 'wagon'



class Main
  def initialize
    @stations = []
    @routes = []
    @trains = []
  end

  # Метод который запускает основной цикл меню
  def run

    loop do

      show_main_menu
      choice = gets.chomp.to_i
      case choice
      when 1 then create_station
      when 2 then create_train
      when 3 then attach_wagon
      when 4 then manage_route_stations
      when 5 then assign_route
      when 6 then add_wagon
      when 7 then delete_wagon
      when 8 then move_train
      when 9 then view_trains
      when 0 then quit
      else
        wrong_choice

      end
    end
  end

  private

  def show_main_menu
  puts "1. Create station"
  puts "2. Create train"
  puts "3. Create route"
  puts "4. Add station to route"
  puts "5. Delete station from route"
  puts "6. Assign the route to the train."
  puts "7. Attach wagon to the train."
  puts "8. Detach wagon of the train."
  puts "9. Move the train throughout the route."
  puts "10. View a list of trains."
  puts "0. Quit the program."
  end

  def create_station
    puts "Please put the station's name"
    name = gets.chomp
    @stations << Station.new(name)
    puts @stations
  end

  def create_train
    puts 'Please type in the train number'
    number = gets.chomp
    puts 'What is the train type? put 1 for Passenger Train OR put 2 for Cargo Train'
    type = gets.chomp
    case type
    when 1 then @trains << PassengerTrain.new(number)
    when 2 then @trains << CargoTrain.new(number)
    end

def  manage_route_stations
  puts "Please put the route's first station number"
  @stations.each_with_index {|station, index| puts "#{index } --- #{ station.name}"}
  first_station_index = gets.to_i
  puts "Please put the route's last station number"
  last_station_index = gets.to_i
  if first_station_index.empty? || last_station_index.empty?
    puts("Please put first and last station numbers")
  else
    route = Route.new(@stations[first_station_index], @st@stations[last_station_index])
    @routes << route
  end
end
  end
end


