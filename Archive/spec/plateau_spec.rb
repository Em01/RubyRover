require 'plateau'

describe Plateau do 
  
  let(:plateau) {Plateau.new(5,5,25)}
  let(:position_three) {Position.new(5,0,"E")}
  
  context 'upon ititialization' do 

    it 'should have a set width' do
      expect(plateau.x_boundary).to eq 5 
    end

    it 'should have a set height' do
      expect(plateau.y_boundary).to eq 5
    end

    it 'should have a set number of locations' do 
      expect(plateau.locations).to eq 25
    end

  context 'the boundaries' do

    it "should return true if an object is within limits" do
      expect(plateau.within_boundaries?(2,2)).to be_truthy 
      expect(plateau.within_boundaries?(3,2)).to be_truthy
      expect(plateau.within_boundaries?(4,4)).to be_truthy  
    end

    it "should return false if an object is withing limits" do
      expect(plateau.within_boundaries?(5,6)).to be_falsey
      expect(plateau.within_boundaries?(6,2)).to be_falsey
      expect(plateau.within_boundaries?(2,9)).to be_falsey
    end

  end







end













end
