require 'plateau'
require 'rover'


  describe Rover do
  let (:rover) {Rover.new}


  
    context 'Rover position' do

  it 'should know its start facing direction' do 
    expect(rover.direction("0 0  N")).to eq ("N")
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

  it 'should be able to take multiple rotational commands' do 
    rover.turn("0 0 N", "RLL")
    expect(rover.facing).to eq ("W")
  end

  end

  context 'Rover moves in steps' do 

    it 'should be able to move one step along the y axis' do 
    rover.steps
    rover.now_facing("R")
    expect(rover.y).to eq(3)
  end

    it 'should be able to move one step along the x axis' do
    rover.turn("0 0 N", "R")
    rover.steps
    expect(rover.x).to eq(2)
    rover.now_facing("R")
    rover.steps
    expect(rover.x).to eq(3)
    
  end
  it 'should be able to move one step' do 
    rover.steps
    expect(rover.x).to eq(1)
    expect(rover.y).to eq(3)
  end
  

  it 'should be able to move and change direction' do 
  rover.steps
  rover.now_facing("L")
  rover.steps

  end

  it 'should be able to move, change its direction and then move again for the y axis' do 
    rover.steps
    rover.now_facing("L")
    rover.steps
    expect(rover.x).to eq(1)
    expect(rover.y).to eq(4)
end

end

  it 'should be able to move, change its direction and then move again for the x axis' do 
    rover.turn("0 0 N", "R")
    rover.steps
    rover.steps
    expect(rover.x).to eq(3)
    expect(rover.y).to eq(2)
  end
end

















 #take multiple rotational commands

 #plataeu can have rover added

 #can update current position

 #rotate and move at the same time???

 #should kno if a position is not plat

 #how the rover interprets input...gets chomp

 #the satellite & how the two communicate

 #compass




# end

  


