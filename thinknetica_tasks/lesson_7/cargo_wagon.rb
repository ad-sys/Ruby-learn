# frozen_string_literal: true

require_relative 'wagon'

class CargoWagon < Wagon
  def countable_field
    'Volume'
  end

  def occupy_capacity(capacity_number)
    @free_capacity -= capacity_number
    @occupied_capacity = @capacity - @free_capacity
  end

  def type
    :cargo
  end
end
