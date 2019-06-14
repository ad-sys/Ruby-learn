require_relative 'wagon'

class PassengerWagon < Wagon
  def initialize(type)
    @type = :pass
  end

end
