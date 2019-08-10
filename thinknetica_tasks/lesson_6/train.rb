# frozen_string_literal: true

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
require_relative 'manufacturer_info'
require_relative 'counters'

class Train
  include ManufacturerInfo
  include Counters
  attr_reader :number, :speed, :route
  @@trains = {}

  def initialize(number)
    @number = number
    @wagons = []
    @speed = 0
    validate!
    @@trains[number] = self
    NUMBER_FORMAT = /[a-z0-9]{3}.*[a-z0-9]{2}\z/i
    register_instance
  end

  def self.find(number)
    @@trains[number]
  end

  def gain_speed(speed)
    @speed += speed
  end

  def stop
    @speed = 0
  end

  # Вагоны Логика

  def add_wagon(wagon)
    return unless @speed.zero?

    @wagons << wagon
  end

  def del_wagon
    return unless @speed.zero?

    @wagons.pop
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
    @current_station_index += 1
  end

  def move_rewind
    return if previous_station.nil?

    current_station.depart(self)
    previous_station.accept_train(self)
    @current_station_index -= 1
  end

  def info
    number
  end

  def valid?
    validate!
    true
  rescue
    false
  end

  NUM_SYMBOL_QTY_ERROR = "Number should be at least 5 symbols"
  WRONG_NUM_FORMAT_ERROR = "Wrong number format"
  def validate!
    raise NUM_SYMBOL_QTY_ERROR if (number.to_s.length) < 5
    raise WRONG_NUM_FORMAT_ERROR if number !~ NUMBER_FORMAT
    true
  end
end


