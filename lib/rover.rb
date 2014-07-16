require 'plateau'

class Rover

  attr_accessor :x, :y, :facing

def initialize
  @x = 1
  @y = 2
  @facing = "N"
  end

  def direction(current_position)
    current_position.split.last
  end

  def coordinates(current_coordinates)
    current_coordinates.split.take(2).join(',')
  end

  
def turn(current_position, instruction)
  compass = ["N", "E", "S", "W"]
  @facing = compass[now_facing(instruction)]
end
  
def now_facing(instruction)
  integer = 0
  if instruction == "R"
    integer += 1
  else instruction == "L"
    integer -= 1
  end
end























end