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
  puts "
					Select an action:

					1. Create station.
					2. Create train.
          3. Create route
          4. Add/Delete station within the route.
					5. Assign the route to the train.
          6. Attach wagon to the train.
					7. Detach wagon of the train.
					8. Move the train throughout the route.
					9. View a list of trains.
					0. Quit the program.
					"
  end
  def create_station
    puts "Please put the station's name"
    name = gets.chomp
    @stations << Station.new(name)
    puts @stations
  end
  def create_train
    puts 'Please type in the train name'
    name = gets.chomp
    puts 'What is the train type? put 1 for Passenger Train OR put 2 for Cargo Train'
    type = gets.chomp
    case when 1

  end
end

