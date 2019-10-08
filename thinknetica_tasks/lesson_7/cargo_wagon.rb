# frozen_string_literal: true
require_relative 'wagon'

class CargoWagon < Wagon
  def countable_field
    'Volume'
  end

  def type
    :cargo
  end
end