require_relative '../array_list'

describe ArrayList do
	let(:list) {ArrayList.new}
	describe 'ArrayList#new(size)' do
		it 'instantiates with a given initial size' do
			expect(list.size).to eq(0)
		end
	end
	describe 'ArrayList#add(element)' do
		it 'adds an element to end of list' do
			list.add(2)
			expect(list.get(0)).to eq(2)
		end
	end
	describe 'ArrayList#get(index)' do
		it 'retrieves element at given index' do
			list.add(2)
			expect(list.get(0)).to eq(2)
		end
		it 'raises out of bounds exception if no element exists at index' do
			expect { list.get(1) }.to raise_error(OutOfBoundsException)
		end
	end
	describe 'ArrayList#set(index, value)' do
		it 'sets value at specified index' do
			list.add(1)
			list.add(2)
			list.set(1, 3)
			expect(list.get(1)).to eq(3)
		end
		it 'raises out of bounds exception if specified index is outside range' do
			list.add(1)
			list.add(2)
			expect { list.set(2, 3) }.to raise_error(OutOfBoundsException)
		end
	end
	describe 'ArrayList#length' do
		it 'returns integer matching number of elements in array' do
			expect(list.length).to eq(0)
			list.add(1)
			expect(list.length).to eq(1)
		end
	end
end