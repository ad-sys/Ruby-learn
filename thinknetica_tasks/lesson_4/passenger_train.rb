# frozen_string_literal: true

require_relative 'train'

class PassengerTrain < Train
  def attachable_wagon?(wagon)
    wagon.is_a?(PassengerWagon)
  end

end
