# frozen_string_literal: true
#
require_relative 'manufacturer_info'
require_relative 'passenger_wagon'
require_relative 'cargo_wagon'

class Wagon
  # include ManufacturerInfo
  attr_reader :type, :capacity, :occupied_capacity, :free_capacity

  def initialize(capacity)

    raise StandardError, "#{countable_field} should be an Integer number" unless capacity.is_a?(Integer)
    raise StandardError, "#{countable_field} should be more than 0" if capacity <= 0

    @capacity = capacity
    @occupied_capacity = 0
    @free_capacity = capacity
    @type = type
  end


  def show_free_capacity
    @capacity - @occupied_capacity
  end

end