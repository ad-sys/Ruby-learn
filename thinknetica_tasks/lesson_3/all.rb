class Station
  attr_reader :trains, :name
  def initialize(name)
    @name = name
    @trains = []
  end

  def accept_train(train)
    @trains << train
  end

  def show_trains
    @trains
  end

  def trains_by_type(type)
    @trains.select { |train| train.type == type }
  end

  def depart(train)
    @trains.delete(train)
  end
end

class Route
  attr_reader :stations

  def initialize(first, last)
    @stations = [first, last]
  end

  def first
    stations.first
  end

  def last
    stations.last
  end

  def add_station(station)
    stations.insert(-2, station)
  end

  def border?(station)
    station == first || station == last
  end

  def delete_station(station)
    return if border?(station)

    stations.delete(station)
  end
end

class Train
  attr_reader :number, :type, :wagons, :speed

  def initialize(number, type, wagons)
    @number = number
    @type = type
    @wagons = wagons
    @speed = 0
  end

  def set_route(route)
    @route = route
    @current_station_index = 0
    @current_station.accept_train(self)
  end

  def next_station
    @route.stations[@current_station_index + 1]
  end

  def previous_station
    return unless @current_station_index.positive?

    @route.stations[@current_station_index -1]
  end

  def current_station
    @route.stations[@current_station_index]
  end

  def move_forward
    return if next_station.nil?

    current_station.depart(self)
    @route.stations[@current_station_index + 1]

  end

  def move_rewind

    if @current_station_index + 1 != nil

    @current_station = @route.stations[@route.stations.find_index(@current_station) - 1]
    end
  end

  def gain_speed(speed)
    @speed += speed
  end

  def stop
    @speed = 0
  end

  def add_wagon
    return unless @speed.zero?

    @wagons += 1
  end

  def del_wagon
    return unless @speed.zero? && @wagons.positive?

    @wagons -= 1
  end
end


