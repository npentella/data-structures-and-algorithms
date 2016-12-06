require_relative "fixed_array"

class ArrayList
	attr_reader :size

	def initialize
		@size = 0
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

	def set(index, value)
		elements.set(index, value)
	end

	def length
		elements.length
	end

	def insert(index, value)
		new_array = FixedArray.new(elements.length + 1)
		counter = 0
		while counter < new_array.size
			if counter == index
				new_array.set(index, value)
			elsif counter < index
				new_array.set(counter, elements.get(counter))
			else
				new_array.set(counter, elements.get(counter - 1))
			end
			counter += 1
		end
		@elements = new_array
		value
	end

	private
	attr_accessor :elements
end