require_relative 'route'
require_relative 'station'
require_relative 'train'

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

      end
    end
  end

  private

  def show_main_menu
  puts "
					Select an action:

					1. Create station.
					2. Create train.
					3. Attach wagon to the train.
					4. Detach wagon of the train.
					5. Put the train station.
					6. View a list of stations.
					7. View a list of trains.
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
    puts 'Please put the train name'
    name = gets.chomp
    puts 'What is the train type? put 1 for Passenger Train OR put 2 for Cargo Train'
    type = gets.chomp
    case when 1

  end
end

