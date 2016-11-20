require_relative '../array_list'

describe ArrayList do
	let(:list) {ArrayList.new(2)}
	describe 'ArrayList#new(size)' do
		it 'instantiates with a given initial size' do
			expect(list.size).to eq(2)
		end
	end
	describe 'ArrayList#add(element)' do
		it 'adds an element to end of list' do
			list.add(2)
			expect(list.elements[-1].to eq(2))
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
end