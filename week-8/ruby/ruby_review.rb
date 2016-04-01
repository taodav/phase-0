# I worked on this challenge [by myself, with: ].
# This challenge took me [#] hours.

# Pseudocode
=begin
	
DEFINE starting variable and set it equal to 1
DEFINE ARRAY with 0 and 1 inside as two elements
UNTIL starting variable is bigger than or equal to num variable,
INJECT numbers in array for next sequence, push next number into array
LOOP the push of numbers and inject UNTIL starting variable is EQUAL TO num argument
return true if above statement is true
else return false
=end


# Initial Solution

# def is_fibonacci?(num)
# 	first_num = 0
# 	sequence = [0, 1]
# 	index = 1
# 	until first_num >= num
# 		first_num = sequence[index - 1] + sequence[index]
# 		sequence.push(first_num)
# 		index += 1
# 	end
# 	puts first_num
# 	if first_num == num
# 		p true
# 	else
# 		p false
# 	end

# end


# Refactored Solution

def is_fibonacci?(num)
	sequence = [0, 1]
	index = 1
	until num <= sequence.last
		sequence.push(sequence[index - 1] + sequence[index])
		index += 1
	end
	return true if sequence.last == num
	return false
end


is_fibonacci?(144)

# Reflection
=begin
	
What concepts did you review or learn in this challenge?

In this challenge I reviewed the concepts of ruby methods, array methods and iteration.

What is still confusing to you about Ruby?

To me, the most confusing thing about ruby is making sure I don't include syntax from javascript.
After seeing the if statement, I nearly closed the statement with a curly brace.

What are you going to study to get more prepared for Phase 1?

I will continue to study the well-grounded rubyist in order to fully comprehend the basics of ruby as a
programming language

=end