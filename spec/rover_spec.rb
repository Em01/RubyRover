require 'plateau'
require 'rover'


  describe Rover do
  let (:rover) {Rover.new}
 

  
    context 'Rover position' do

  it 'should know its start facing direction' do 
    expect(rover.direction("0 0  N")).to eq ("N")
  end



  it 'should know its start coordinates on the x axis' do 
       expect(rover.x).to eq (0)
  end

  it 'should know its start coordinates on the y axis' do 
       expect(rover.y).to eq (0)
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
    expect(rover.y).to eq(1)
  end

    it 'should be able to move one step along the x axis' do
    rover.turn("0 0 N", "R")
    rover.steps
    expect(rover.x).to eq(1)
    rover.now_facing("R")
    rover.steps
    expect(rover.x).to eq(2)

  end
  it 'should be able to move one step' do 
    rover.steps
    expect(rover.x).to eq(0)
    expect(rover.y).to eq(1)
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
    expect(rover.x).to eq(0)
    expect(rover.y).to eq(2)
end

end

  it 'should be able to move, change its direction and then move again for the x axis' do 
    rover.turn("0 0 N", "R")
    rover.steps
    rover.steps
    expect(rover.x).to eq(2)
    expect(rover.y).to eq(0)
  end



   # it 'will remain static until it receives input data' do
   # end

 #  context 'the rover boundaries' do 
 #    it 'raises an error if it is out of bounds' do
  
 # end









end











 #plataeu can have rover added

 #can update current position

 

 #should kno if a position is not plat

 #how the rover interprets input...gets chomp

 

 #compass




# end

  


