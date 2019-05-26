# Frozen_string_literal:true

# This class describes the Train

class Train
  attr_reader :number, :type, :wagons

  def initialize(number, type, wagons)
    @number = number
    @type = type
    @wagons = wagons
    @speed = 0
  end

  def change_speed(speed)
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

    @wagons += 1
  end

  def current_wagons_qty
    @wagons = wagons
  end
end
