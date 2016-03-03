# I worked on this challenge [by myself, with: ].


# Your Solution Below

def valid_triangle?(a, b, c)
	if ((a + b) > c) && ((a + c) > b) && ((c + b) > a)
		return p true
	else
		return p false
	end
end

valid_triangle?(1, 2, 3)
valid_triangle?(1, 1, 1)
valid_triangle?(1, 1, 3)