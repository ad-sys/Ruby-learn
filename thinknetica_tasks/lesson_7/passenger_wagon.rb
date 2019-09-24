# frozen_string_literal: true

require_relative 'wagon'

class PassengerWagon < Wagon
  attr_reader :type, :number_of_seats, :occupied_seats, :free_seats

  def initialize(number_of_seats)

    raise StandardError, 'Number of seats should be an Integer number' unless number_of_seats.is_a?(Integer)
    raise StandardError, 'Number of seats should be more than 0' if number_of_seats <= 0

    @type = :pass
    @number_of_seats = number_of_seats
    @occupied_seats = 0
    @free_seats = number_of_seats
  end
  
  def take_a_seat
    @occupied_seats = @number_of_seats - (@number_of_seats - 1)
  end

  def show_free_seats
    @number_of_seats - @occupied_seats
  end
end
