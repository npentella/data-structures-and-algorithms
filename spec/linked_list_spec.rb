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
	describe 'LinkedList#remove_first' do
		it 'removes element at front of list' do
			linked_list.insert_first("string")
			linked_list.remove_first
			expect(linked_list.get(0)).to eq(nil)
		end
		it 'moves next element to front of list' do
			linked_list.insert_first("string")
			linked_list.insert_first(1)
			linked_list.remove_first
			expect(linked_list.get(0)).to eq("string")
		end
	end
	describe 'LinkedList#insert_last(element)' do
		it 'inserts given element as last element in list' do
			linked_list.insert_first(1)
			linked_list.insert_last("string")
			expect(linked_list.get(1)).to eq("string")
		end
	end
	describe 'LinkedList#remove_last' do
		it 'removes element from end of list' do
			linked_list.insert_first(1)
			linked_list.insert_last("string")
			linked_list.remove_last
			expect(linked_list.get(1)).to eq(nil)
		end
	end
	describe 'LinkedList#set(index, element' do
		it 'updates node at given index with value of given element' do
			linked_list.insert_first(1)
			linked_list.set(0, "string")
			expect(linked_list.get(0)).to eq("string")
		end
	end
	describe 'LinkedList#insert(index, element)' do
		it 'sets correct value at specified index' do
			linked_list.insert_first("a")
			linked_list.insert_last("b")
			linked_list.insert(1, "c")
			expect(linked_list.get(1)).to eq("c")
		end
		it 'moves element curetnly at given index to next index' do
			linked_list.insert_first("a")
			linked_list.insert_last("b")
			linked_list.insert(1, "c")
			expect(linked_list.get(2)).to eq("b")
		end
	end
end