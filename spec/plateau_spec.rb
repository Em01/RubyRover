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


# context 'if a location is not within the boundary' do 

# it 'should raise an error if the x boundary is crossed' do 
# end

# it 'should raise and error if the y boundary is crossed' do 
# end

# it 'should return false if the x boundary is not crossed' do
#   end

#   it 'should return false if the y boundary is not crossed' do 

#   end





end
end