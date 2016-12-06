require_relative '../node'

describe Node do
	let(:element) {"string"}
	let(:node) {Node.new(element)}

	describe 'Node#new(element)' do
		it 'instantiates with given element' do
			expect(node.element).to eq("string")
		end
	end
	describe 'Node#insert_after(other_node)' do
		let(:other_element) { 1 }
		let(:other_node) { Node.new(other_element) }

		it 'points to given node' do
			node.insert_after(other_node)
			expect(node.next).to eq(other_node)
		end
	end
	describe 'Node#remove_after' do
		let(:other_element) { 1 }
		let(:other_node) { Node.new(other_element) }

		it 'removes association with next node' do
			node.insert_after(other_node)
			node.remove_after
			expect(node.next).to eq(nil)
		end
	end
end