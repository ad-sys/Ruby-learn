# frozen_string_literal: true

require_relative 'wagon'

class CargoWagon < Wagon
  attr_reader :type, :volume, :occupied_volume, :free_volume

  def initialize(volume)

    raise StandardError, 'Volume should be an Integer number' unless number_of_seats.is_a?(Integer)
    raise StandardError, 'Volume should be more than 0' if number_of_seats <= 0

    @type = :pass
    @volume = volume
    @occupied_volume = 0
    @free_volume = volume
    @volume_number = 0
  end

  def occupy_voulme(volume_number)
    @occupied_volume = @free_volume - volume_number
  end

  def show_free_volume
    @volume - @occupied_volume
  end

  def show_occupied_volume
    @occupied_volume
  end

end
