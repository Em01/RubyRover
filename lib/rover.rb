require 'plateau'

class Rover

def initialize
  end

  def direction(current_position)
    current_position.split.last
  end

  def coordinates(current_coordinates)
    current_coordinates.split.take(2).join(',')
  end

end