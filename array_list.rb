require_relative "fixed_array"

class ArrayList
	attr_reader :size

	def initialize(size=0)
		@size = size
		@elements = FixedArray.new(size)
	end

	def add(element)
		if elements.length < elements.size
			@elements.set(elements.length, element)
		else
			new_array = FixedArray.new(elements.size + 1)
			elements.length.times do |i|
				new_array.set(i, elements.get(i))
			end
			new_array.set(elements.size, element)
			@elements = new_array
		end
		element
	end

	def get(index)
		elements.get(index)
	end

	private
	attr_reader :elements
end