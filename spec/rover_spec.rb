require 'plateau'
require 'rover'


  describe Rover do
  let (:rover) {Rover.new}

  
    context 'Rover position' do

  it 'should know its start facing direction' do 
    expect(rover.direction("1 2 N")).to eq ("N")
  end



  it 'should know its start coordinates on the x axis' do 
       expect(rover.x).to eq (1)
  end

  it 'should know its start coordinates on the y axis' do 
       expect(rover.y).to eq (2)
  end


end

    context 'Changing direction on the compass' do

  it 'should be able to change its facing direction to the right by 90 degrees' do 
    rover.turn("0 0 N", "R")
    expect(rover.facing).to eq("E")
  end
 
  it 'should be able to change its facing direction to the left by 90 degrees' do
    rover.turn("0 0 N", "L")
    expect(rover.facing).to eq("W")
  end

  end
end

#   context 'Rover movement' do

#     it 'should be able to make a singular movement' do
#       rover.move
#       expect
#     end 
# end









 #take multiple rotational commands

 #plataeu can have rover added

 #can update current position

 #rotate and move at the same time???

 #should kno if a position is not plat

 #how the rover interprets input...gets chomp

 #the satellite & how the two communicate

 #compass




# end

  


