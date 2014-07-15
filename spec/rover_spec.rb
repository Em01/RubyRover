require 'plateau'
require 'rover'


  describe Rover do


  let (:rover) {Rover.new}

  
  context 'Rover position'

    it 'should know its start facing direction' do 
    expect(rover.direction("0 0 N")).to eq "N"
  end

end

  


