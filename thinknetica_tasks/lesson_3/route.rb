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
    route.stations.each { |station| puts station.name }
  end

end
