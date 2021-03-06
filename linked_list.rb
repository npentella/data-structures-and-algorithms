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

	def remove_last
		node_to_check = @first_node
		@length.times do |n|
			if (@length - 2) == n
				node_to_check.remove_after
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

	def set(index, element)
		node_to_check = @first_node
		(index + 1).times do |n|
			if index == n
				node_to_check.update_value(element)
			else
				node_to_check = node_to_check.next_node
			end
		end
		nil
	end

	def insert(index, element)
		node_to_check = @first_node
		before_node = nil
		after_node = nil
		(index + 1).times do |n|
			if index - 1 == n
				before_node = node_to_check
			elsif index == n
				after_node = node_to_check
			end
			node_to_check = node_to_check.next_node	
		end
		new_node = Node.new(element)
		before_node.insert_after(new_node)
		new_node.insert_after(after_node)
	end
end