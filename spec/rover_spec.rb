require 'plateau'
require 'rover'


  describe Rover do
  let (:rover) {Rover.new}

  
  context 'Rover position'

    it 'should know its start facing direction' do 
    expect(rover.direction("1 2 N")).to eq ("N")
  end

    it 'should know its start coordinates' do 
      expect(rover.coordinates("1 2 N")).to eq ("1,2")
  end

  

end

  


