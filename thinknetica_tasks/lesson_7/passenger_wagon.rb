# frozen_string_literal: true

require_relative 'wagon'

class PassengerWagon < Wagon
  def countable_field
    'Number of seats'
  end

  def type
    :pass
  end
end
