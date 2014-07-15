class Plateau

  attr_reader :y_boundary, :x_boundary, :locations
  
  def initialize(x_boundary, y_boundary, locations)
    @y_boundary = y_boundary
    @x_boundary = x_boundary
    @locations = locations
  end

end