require_relative '../linked_list'

describe LinkedList do
	let(:linked_list) { LinkedList.new }

	describe 'LinkedList#new' do
		it 'initializes with nil as the starting node' do
			expect(linked_list.first_node).to eq(nil)
		end
	end
end