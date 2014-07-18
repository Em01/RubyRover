require 'rover'
require_relative 'plateau'

class Satellite

  attr_reader :input, :rovers

  def initialize(input)
    @input = input.lines
    @rovers = []
  end

  def output_rovers
    finish_data = [[1, 3, "N"], [5, 1, "E"]]
    rovers.each do |rover|
    finish_data << [rover.x, rover.y, rover.facing]
  end
    finish_data
  end

end





  