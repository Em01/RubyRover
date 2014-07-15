class Plateau

  attr_reader :y_boundary, :x_boundary
  
  def initialize(x_boundary, y_boundary)
    @y_boundary = y_boundary
    @x_boundary = x_boundary
  end

end