require_relative '../fixed_array'

describe FixedArray do
	let(:fixed_array) {FixedArray.new(2)}

  describe 'FixedArray#new' do
  	it 'initializes with a given size' do
  		expect(fixed_array.size).to eq(2)
  	end
  end
  describe 'FixedArray#get(index)' do
  	it 'gets value at specificed index' do
  		fixed_array.set(0, 1)
  		expect(fixed_array.get(0)).to eq(1)
  	end
  	it 'raises Out of Bounds exception if user tries to get a value outside the array' do
  		expect {fixed_array.get(2)}.to raise_error(OutOfBoundsException)
  	end
  end
  describe 'FixedArray#set(index, element)' do
  	it 'sets element at specified index' do
  		fixed_array.set(0, 1)
  		expect(fixed_array.get(0)).to eq(1)
  	end
  	it 'raises Out of Bounds exception if user tries to get a value outside the array' do
  		expect {fixed_array.set(2, 3)}.to raise_error(OutOfBoundsException)
  	end
  end
end
