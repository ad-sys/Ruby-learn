
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

  def show_trains_type(type)
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

  def delete(station)
    stations.delete(station)
  end
end

class Train
  attr_reader :number, :type, :wagons

  def initialize(number, type, wagons)
    @number = number
    @type = type
    @wagons = wagons
    @speed = 0
  end

  def gain_speed(speed)
    @speed = speed
  end

  def current_speed
    @speed
  end

  def stop
    @speed = 0
  end

  def add_wagon
    return unless @speed.zero?

    @wagons += 1
  end

  def del_wagon
    return unless @speed.zero?

    @wagons -= 1
  end

  def current_wagons_qty
    @wagons
  end
end