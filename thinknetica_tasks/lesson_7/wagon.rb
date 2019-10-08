# frozen_string_literal: true
#
require_relative 'manufacturer_info'

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

  def occupy_capacity(capacity_number = 1)
    @free_capacity = @free_capacity - capacity_number
    @occupied_capacity = @capacity - @free_capacity
  end

  def show_free_capacity
    @capacity - @occupied_capacity
  end

  def countable_field
    raise NotImplementedError
  end

  def type
    raise NotImplementedError
  end
end