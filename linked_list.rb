require_relative 'node'

class LinkedList
	attr_reader :first_node

	def initialize
		@length = 0
		@first_node = nil
	end

	def insert_first(element)
		@first_node = Node.new(element, @first_node)
		@length += 1
	end

	def get(index)
		node_to_check = @first_node
		(index + 1).times do |n|
			if index == n
				return node_to_check.value
			else
				node_to_check = node_to_check.next_node
			end
		end
	end
end