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

	def remove_first
		@first_node = @first_node.next_node
	end

	def insert_last(element)
		node_to_check = @first_node
		@length.times do |n|
			if (@length - 1) == n
				node_to_check.insert_after(Node.new(element))
				@length += 1
			else
				node_to_check = node_to_check.next_node
			end
		end
	end

	def get(index)
		node_to_check = @first_node
		(index + 1).times do |n|
			if index == n
				return node_to_check.value if node_to_check
			else
				node_to_check = node_to_check.next_node
			end
		end
		nil
	end
end