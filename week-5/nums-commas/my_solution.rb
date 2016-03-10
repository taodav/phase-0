# Numbers to Commas Solo Challenge

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input?
# Our method call with the number argument.
# What is the output? (i.e. What should the code return?)
# a string with the numbers separated every 3 decimal places.
# What are the steps needed to solve the problem?
# Write an if statement where if the length is less than 4, it returns the number
# Or else you set the number of loops needed according to the length of the number
# the you loop the number and insert a ',' for every 4 digits
# return the number


# 1. Initial Solution

def separate_comma(num)
	number = num.to_s
	if number.length < 4
		p number
	else
		num_of_loops = ((number.length - 1) / 3)
		position = -4
		until num_of_loops == 0
			number.insert(position, ",")
			position -= 4
			num_of_loops -= 1
		end
	end
	p number
end

separate_comma(10000000000000)


# 3. Reflection

What was your process for breaking the problem down? What different approaches did you consider?

I first considered writing a puts statement with the commas inserted in, but that wouldn't work as it wouldn't
work for every number.

Was your pseudocode effective in helping you build a successful initial solution?

Yes, it was helpful to some extent, but the logic of the code still required a lot of thought that
wasn't in the pseudocode.

What new Ruby method(s) did you use when refactoring your solution? Describe your experience of using the 
Ruby documentation to implement it/them (any difficulties, etc.). Did it/they significantly change the way 
your code works? If so, how?

I learnt about the insert method for strings. I tried experimenting with the number in the code block for
insert, which specified the position of the insert. After I managed to get that figured out, the code pretty much
came together by itself.

How did you initially iterate through the data structure?

I didn't exactly create arrays or hashes to iterate, instead I iterated through blocks of 4 digits in the number
and inserted my comma.

Do you feel your refactored solution is more readable than your initial solution? Why?

Yes, because my refactored solution, while a bit messy in terms of the math, is still pretty clear what it does.