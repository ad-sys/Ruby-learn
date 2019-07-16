# frozen_string_literal: true
#
require_relative ‘manufacturer_info’

class Wagon
  include ManufacturerInfo
  attr_reader :type

  def initialize
    @type = type
  end
end
