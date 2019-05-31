# Требуется написать следующие классы:

# Класс Station (Станция):
# Имеет название, которое указывается при ее создании
# Может принимать поезда (по одному за раз)
# Может показывать список всех поездов на станции,
# находящиеся в текущий момент
# Может показывать список поездов на станции по типу
# (см. ниже): кол-во грузовых, пассажирских
# Может отправлять поезда (по одному за раз, при этом,
# поезд удаляется из списка поездов, находящихся на станции).

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
# Класс Route (Маршрут):
# Имеет начальную
# и конечную станцию, а также список промежуточных станций.
# Начальная и конечная станции указываютсся при создании маршрута,
# а промежуточные могут добавляться между ними.
# Может добавлять промежуточную станцию в список
# Может удалять промежуточную станцию из списка
# Может выводить список всех станций по-порядку от начальной
# до конечной
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

  def print_all_stations
    puts @stations
  end

end
# Класс Train (Поезд):
# Имеет номер (произвольная строка) и тип (грузовой, пассажирский)
# и количество вагонов, эти данные указываются при создании
# экземпляра класса
# Может набирать скорость
# Может показывать текущую скорость
# Может тормозить (сбрасывать скорость до нуля)

# Может показывать количество вагонов
# Может прицеплять/отцеплять вагоны (по одному вагону за операцию,
# метод просто увеличивает или уменьшает количество вагонов).
# Прицепка/отцепка вагонов может осуществляться
# только если поезд не движется.

# Может принимать маршрут следования (объект класса Route)
# Может перемещаться между станциями, указанными в маршруте.
# Показывать предыдущую станцию, текущую, следующую,
# на основе маршрута
#  passenger
class Train
  attr_reader :number, :type, :wagons, :speed

  def initialize(number, type, wagons)
    @number = number
    @type = type
    @wagons = wagons
    @speed = 0
  end

  def gain_speed(speed)
    @speed += speed
  end

  def stop
    @speed = 0
  end

# Вагоны Логика

  def add_wagon
    return unless @speed.zero?

    @wagons += 1
  end

  def del_wagon
    return unless @speed.zero? && @wagons.positive?

    @wagons -= 1
  end

 # Перемещение логика

  def set_route(route)
    @route = route
    @current_station_index = 0
    current_station.accept_train(self)
  end

  def next_station

    @route.stations[@current_station_index + 1]
  end

  def previous_station
    return unless @current_station_index.positive?

    @route.stations[@current_station_index - 1]
  end

  def current_station
    @route.stations[@current_station_index]
  end

  def move_forward
    return if next_station.nil?

    current_station.depart(self)
    next_station.accept_train(self)

  end

  def move_rewind

    return if previous_station.nil?
    current_station.depart(self)
    previous_station.accept_train(self)
  end
end



