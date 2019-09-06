# frozen_string_literal: true
#
require_relative 'manufacturer_info'

class Wagon
  include ManufacturerInfo
  attr_reader :type, :number_of_seats

  def initialize(number_of_seats)

    raise StandardError, 'Number of seats should be an Integer number' unless number_of_seats.is_a?(Integer)
    raise StandardError, 'Number of seats should be more than 0' if number_of_seats <= 0

    @type = type
    @number_of_seats = number_of_seats
  end

  def take_a_seat
    @number_of_seats += 1
  end

end
