require_relative '../linked_list'

describe LinkedList do
	let(:linked_list) { LinkedList.new }

	describe 'LinkedList#new' do
		it 'initializes with nil as the starting node' do
			expect(linked_list.first_node).to eq(nil)
		end
	end
	describe 'LinkedList#insert_first(element)' do
		it 'sets given element to first node' do
			linked_list.insert_first("string")
			expect(linked_list.get(0)).to eq("string")
		end
		it 'moves element currently at given position to next index' do
			linked_list.insert_first(1)
			linked_list.insert_first("string")
			expect(linked_list.get(1)).to eq(1)
		end
	end
	describe 'LinkedList#get(index)' do
		it 'retrieves element at given index' do
			linked_list.insert_first("string")
			expect(linked_list.get(0)).to eq("string")
		end
	end
end