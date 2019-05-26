
# Frozen_string_literal:true

# This class describes the Station

require "./route"
require "./train"

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
    trains.select { |train| train.type == type }
  end

  def depart(train)
    trains.delete(train)
  end
end