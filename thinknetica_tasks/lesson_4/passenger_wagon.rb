# frozen_string_literal: true

require_relative 'wagon'

class PassengerWagon < Wagon
  def initialize(_type)
    @type = :pass
  end

end
