# frozen_string_literal: true

# Класс Route (Маршрут):
# Имеет начальную
# и конечную станцию, а также список промежуточных станций.
# Начальная и конечная станции указываютсся при создании маршрута,
# а промежуточные могут добавляться между ними.
# Может добавлять промежуточную станцию в список
# Может удалять промежуточную станцию из списка
# Может выводить список всех станций по-порядку от начальной
# до конечной
require_relative 'counters'

class Route
  include Counters
  attr_reader :stations

  def initialize(first_station, last_station)
    @stations = [first_station, last_station]
    register_instance
  end

  def first_station
    stations.first
  end

  def last_station
    stations.last
  end

  def add_station(station)
    stations.insert(-2, station)
  end

  def border?(station)
    station == first_station || station == last_station
  end

  def delete_station(station)
    return if border?(station)

    stations.delete(station)
  end

  def print_all_stations
    route.stations.each { |station| puts station.name }
  end

  def info
    [first_station.name, last_station.name].join('-')
  end

  def valid?
    validate!
    true
  rescue
    false
  end

  FIRST_LAST_STATION_ERROR = "First and last stations could not be the same"
  ONLY_STATIONS_ACCEPTED = "Route can only consist of stations"
  def validate!
    raise FIRST_LAST_STATION_ERROR if first_station == last_station
    raise ONLY_STATIONS_ACCEPTED if first_station.is_a?(stations) && last_station.is_a?(stations)
    true
  end

end
