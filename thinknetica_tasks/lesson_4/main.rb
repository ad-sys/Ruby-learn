# frozen_string_literal: true

require_relative 'cargo_train'
require_relative 'cargo_wagon'
require_relative 'passenger_train'
require_relative 'passenger_wagon'
require_relative 'route'
require_relative 'station'
require_relative 'train'
require_relative 'wagon'

class Main
  attr_reader :trains, :routes, :stations

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
      when 5 then add_route_station
      # when 6 then add_wagon
      # when 7 then delete_wagon
      #  when 8 then move_train
      #  when 9 then view_trains
      #    when 0 then quit

      else
        wrong_choice

      end
    end
  end

  private

  def show_main_menu
    puts '1. Create station'
    puts '2. Create train'
    puts '3. Create route'
    puts '4. Delete station from route'
    puts '5. Add station to route'
    puts '6. Assign the route to the train.'
    puts '7. Attach wagon to the train.'
    puts '8. Detach wagon of the train.'
    puts '9. Move the train throughout the route.'
    puts '10. View a list of trains.'
    puts '0. Quit the program.'
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
    type = gets.to_i

    case type
    when 1 then trains << PassengerTrain.new(number)
    when 2 then trains << CargoTrain.new(number)
    end
  end

  def create_route
    puts "Please put the route's first station number"
    show_array(@stations)
    first_station = select_from_array(@stations)
    show_array(@stations)
    last_station = select_from_array(@stations)

    if first_station.nil? || last_station.nil?
      puts('Please put first and last station numbers')
    else
      @routes << Route.new(first_station, last_station)
    end
  end

  def attach_wagon
    show_array(trains)
    puts 'Choose the train you want to attach the wagon to'
    selected_train = select_from_array(trains)
    return if selected_train.nil?

    if selected_train.is_a?(PassengerTrain)
      selected_train.add_wagon(PassengerWagon.new)

    elsif selected_train.is_a?(CargoTrain)
      selected_train.add_wagon(CargoWagon.new)
    end
  end

  def delete_wagon

  end

  def show_array(array)
    array.each.with_index(1) do |item, index|
      puts "#{index} --- #{item.info}"
    end
  end

  def select_from_array(array)
    index = gets.to_i - 1
    return if index.negative?

    array[index - 1]
  end

  def add_route_station
    show_array(routes)
    puts 'Select route to add to station'
    selected_route = select_from_array(routes)
    return if selected_route.nil?

    show_array(stations)
    puts 'Select station to add to selected route'
    selected_station = select_from_array(stations)
    selected_route.add_station(selected_station)
  end
end

