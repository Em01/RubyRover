require 'rover'
 require 'satellite'
 
 describe 'Satellite' do 
 
   let(:satellite) {Satellite.new(IO.read('spec/instructions/input.txt'))}
 
   it 'can recieve input from the input data file as an array' do 
     expect(satellite.input).to eq ["5 5\n", "1 2 N\n", "LMLMLMLMM\n", "3 3 E\n", "MMRMMRMRRM"]
   end

end

