# frozen_string_literal: true

require_relative 'wagon'

class PassengerWagon < Wagon
  def countable_field
    'Number of seats'
  end

  def occupy_seat(capacity_number = 1)
    @free_capacity = @free_capacity - capacity_number
    @occupied_capacity = @capacity - @free_capacity
  end

  def type
    :pass
  end

end
