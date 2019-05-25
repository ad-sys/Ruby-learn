class Train
  attr_accessor :speed
  attr_reader :number, :type

  def initialize(number, type, wagons)
    @number = number
    @type = type
    @wagons = wagons
    @speed = 0
  end

  def gain_speed
    @speed = speed + 10
  end

  def show_speed
    puts @speed
  end

  def stop
    @speed = 0
  end

  def add_wagons
    if @speed == 0
      self.wagons += 1
    else
      puts "Wagons can only be added in train is not moving"
    end
  end

  def del_wagons
    if @speed == 0
      self.wagons -= 1
    else
      puts "Wagons can only be cut-off in train is not moving"
    end
  end
end
