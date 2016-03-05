
# Concatenate Two Arrays

# I worked on this challenge [by myself, with: ].


# Your Solution Below

def array_concat(array_1, array_2)
	combined_array = []
	array_1.each do |string|
		combined_array.push string
	end
	array_2.each do |string|
	combined_array.push string
	end
	return combined_array
end