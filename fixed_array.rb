require_relative 'errors'

class FixedArray
	attr_reader :size

	def initialize(size=0)
		@size = size
		@elements = []
	end

	def set(index, element)
		handle_out_of_bounds(index)
		elements[index] = element
	end

	def get(index)
		handle_out_of_bounds(index)
		elements[index]
	end

	private
	attr_reader :elements

	def raise_out_of_bounds(index)
		raise OutOfBoundsException.new("Index #{index} is out of bounds. Size is #{size}.")
	end

	def handle_out_of_bounds(index)
		raise_out_of_bounds(index) if index >= size || index < 0		
	end
end
