require_relative '../node'

describe Node do
	describe 'Node#new(element)' do
		let(:element) {"string"}
		let(:node) {Node.new(element)}
		
		it 'instantiates with given element' do
			expect(node.element).to eq("string")
		end
	end	
end