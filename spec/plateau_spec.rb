require 'plateau'

describe Plateau do 

  let(:plateau) {Plateau.new(5,5,25)}
  

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

end
end