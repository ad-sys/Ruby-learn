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
      when 4 then create_route
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
  end



  def create_route
    puts "Please put the route's first station number"
    show_stations(@stations)
    first_station = select_from_stations(@stations)
    show_stations(@stations)
    last_station = select_from_stations(@stations)

      if first_station.nil? || last_station.nil?
        puts("Please put first and last station numbers")
      else
        @routes << Route.new(first_station, last_station)
      end
  end



  def attach_wagon
    show_trains(trains)
    puts "Choose the train you want to attach the wagon to"
    select_from_trains(trains)
      if Wagon.type == :cargo
        train.add_wagon(PassengerWagon.new(number))
      else
        train.add_wagon(CargoWagon.new(number))
      end

  end

  def show_stations(stations)
    stations.each.with_index(1) do |station, index|
    puts "#{index} --- #{station.name}"
    end
  end

  def show_trains(trains)
    trains.each.with_index(1) do |train, index|
    puts "#{index} --- #{train.name}"
    end
  end

  def show_routes(routes)
    routes.each.with_index(1) do |route, index|
    puts "#{index} --- #{route.name}"
    end
  end

  def select_from_stations(stations)
    index = gets.to_i - 1
    return if index.negative?
    stations[index - 1]
  end

  def select_from_trains(trains)
    index = gets.to_i - 1
    return if index.negative?
    trains[index - 1]
  end

  def select_from_routes(routes)
    index = gets.to_i - 1
    return if index.negative?
    routes[index - 1]
  end

end


