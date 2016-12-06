class Node
	attr_reader :value, :next

	def initialize(element)
		@value = element
		@next = nil
	end
end