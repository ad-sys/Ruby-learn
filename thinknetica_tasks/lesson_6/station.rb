# frozen_string_literal: true

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
require_relative 'counters'

class Station
  attr_reader :trains, :name
  include Counters
  @@stations = {}

  def initialize(name)
    validate!
    @name = name
    @trains = []
    @@stations[name] = self
    register_instance
  end

  def accept_train(train)
    @trains << train
  end

  def self.all
    @@stations.values
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

  def info
    name
  end

  def valid?
    validate!
  rescue
    false
  end

  def validate!
    raise "Station name should not be empty" if @name.empty?
    true
  end

end
