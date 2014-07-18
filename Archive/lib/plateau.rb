require 'rover'
require'plateau'

class Plateau

  attr_reader :y_boundary, :x_boundary, :locations
  
  def initialize(x_boundary, y_boundary, locations)
    @y_boundary = y_boundary
    @x_boundary = x_boundary
    @locations = locations
  end

  def within_boundaries?(position_a, position_b)
    position_a <= @y_boundary && position_b <= @x_boundary
  end

end