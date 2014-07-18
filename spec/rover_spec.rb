require 'plateau'
require 'rover'


  describe Rover do
  
  let(:max_limit) {"5 5"} 
  let (:rover) {Rover.new}
  let (:rover2) {Rover.new}
 

  
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
    rover.M 
    rover.now_facing("R")
    expect(rover.y).to eq(1)
  end

    it 'should be able to move one step along the x axis' do
    rover.turn("0 0 N", "R")
    rover.M
    expect(rover.x).to eq(1)
    rover.now_facing("R")
    rover.M
    expect(rover.x).to eq(2)

  end
  it 'should be able to move one step' do 
    rover.M
    expect(rover.x).to eq(0)
    expect(rover.y).to eq(1)
  end
  

  it 'should be able to move and change direction' do 
  rover.M
  rover.now_facing("L")
  rover.M

  end

  it 'should be able to move, change its direction and then move again for the y axis' do 
    rover.M
    rover.now_facing("L")
    rover.M
    expect(rover.x).to eq(0)
    expect(rover.y).to eq(2)
end

end

  it 'should be able to move, change its direction and then move again for the x axis' do 
    rover.turn("0 0 N", "R")
    rover.M
    rover.M
    expect(rover.x).to eq(2)
    expect(rover.y).to eq(0)
  end

    

end






