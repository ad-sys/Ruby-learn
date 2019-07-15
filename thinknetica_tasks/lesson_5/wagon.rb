# frozen_string_literal: true

class Wagon
  include ManufacturerInfo
  attr_reader :type

  def initialize
    @type = type
  end
end
