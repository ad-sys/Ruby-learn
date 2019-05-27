class Station
  def initialize(station_name)
    @station_name = station_name
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

  def add(station)
    stations.insert(-2, station)
  end

  def outside?(station)
    station == first || station == last
  end

  def delete(station)
    return if outside?(station)
    stations.delete(station)
  end
end

class Train
  attr_reader :number, :type, :wagons
  attr_reader :speed

  def initialize(number, type, wagons)
    @number = number
    @type = type
    @wagons = wagons
    @speed = 0
    @current_station = @route.first
  end

  def set_route(route)
    @route = route
    @current_station = route.first
  end
  def move_forward
    @current_station = @route.stations[@route.stations.find_index(@current_station) + 1]
  end

  def move_rewind
    @current_station = @route.stations[@route.stations.find_index(@current_station) - 1]
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
