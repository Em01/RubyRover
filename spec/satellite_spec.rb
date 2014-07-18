require 'rover'
 require 'satellite'
 
 describe 'Satellite' do 
 
   let(:satellite) {Satellite.new(IO.read('spec/instructions/input.txt'))}
 
   it 'can recieve input from the input data file as an array' do 
     expect(satellite.input).to eq ["5 5\n", "1 2 N\n", "LMLMLMLMM\n", "3 3 E\n", "MMRMMRMRRM"]
   end

   it 'can turn a string into an array' do 
    string = "1 2 3"
    expect(string.split).to eq ["1", "2", "3"]
   end

   it 'can turn an an array of strings into integers' do 
    array = ["1", "2", "3"]
    expect(array.map {|number| number.to_i}).to eq [1,2,3]
  end

  it 'can take specific parts of the array as instructions' do 
    letters = []
    array = ["a",1,"b",2,"c",3]
    array.each_slice(2) {|letter, number| letters << letter}
    expect(letters).to eq ["a","b","c"]
  end

  it 'can make an array of arrays' do 
    array = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    array.each_slice(3) 
    array.each_slice(3).to_a 
  end

  it 'can make the elements within an array of arrays strings' do 
    arrays = [["1 2"],["3 4"],["5 6"],["6 7"], ["8 9"]]
    arrays = arrays.map {|array| array.join('')}
    expect(arrays).to eq ["1 2", "3 4", "5 6", "6 7", "8 9"]
  end

   it 'can read only certain items from the array of arrays' do
  arrays = [["1 2"],["3 4"],["5 6"],["6 7"], ["8 9"]]
  arrays.find { |a| a.first }
  expect(arrays.first).to eq ["1 2"]
  end

  it 'can remove the first line of the input file' do
    input = IO.read('spec/instructions/input.txt').lines
    input.shift
    expect(input).to eq ["1 2 N\n", "LMLMLMLMM\n", "3 3 E\n", "MMRMMRMRRM"]
  end
end


  