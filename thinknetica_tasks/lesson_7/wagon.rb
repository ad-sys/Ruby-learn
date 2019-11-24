# frozen_string_literal: true
#
require_relative 'manufacturer_info'

class Wagon
  # include ManufacturerInfo
  attr_reader :type, :capacity, :occupied_capacity, :free_capacity

  def initialize(capacity)

    #raise StandardError, "#{countable_field} should be an Integer number" unless countable_field.is_a?(Integer)
    #raise StandardError, "#{countable_field} should be more than 0" if countable_field <= 0
    @wagon_number = rand(1000...9999)
    @capacity = capacity
    @occupied_capacity = 0
    @free_capacity = capacity
    @type = type
  end


  def show_free_capacity
    @capacity - @occupied_capacity
  end

  def info
    @wagon_number
  end

end