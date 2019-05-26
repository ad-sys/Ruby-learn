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

  def set_speed (speed)
    @speed = speed
  end

  def current_speed
    @speed
  end

  def stop
    @speed = 0
  end

  def add_wagons
    if @speed.zero?
      @wagons += 1
    else
      puts 'Wagons can only be added in train is not moving'
    end
  end

  def del_wagons
    if @speed.zero?
      @wagons -= 1
    else
      puts 'Wagons can only be cut-off in train is not moving'
    end
  end
end
