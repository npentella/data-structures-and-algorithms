class Node
	attr_reader :value, :next_node

	def initialize(element, next_node=nil)
		@value = element
		@next_node = next_node
	end

	def insert_after(other_node)
		self.next_node = other_node
	end

	def remove_after
		self.next_node = nil
	end

	def update_value(element)
		@value = element
	end

	private
	attr_writer :value, :next_node
end