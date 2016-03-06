# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge with Catie Hoffman.

# 0. total Pseudocode
# make sure all pseudocode is commented out!

# Input: [1,2,3,4]
# Output: 10
# Steps to solve the problem.

#Create a method called total with input as the argument.
#In our method we take our input argument and them we use the inject method to sum all the arguments.

# 1. total initial solution

# def total(input)
# 	integer = 0
# 	input.each do |number|
# 		integer + number
# 	end
# 	return integer
# end

# 3. total refactored solution

def total(input)
	input.inject(0) {|sum, n| sum + n}
end
total([1,2,3,4])

# 4. sentence_maker pseudocode
# make sure all pseudocode is commented out!
# Input: { "Hello" "," "my" "name" "is" "David"}
# Output: {"Hello, my name is David"}
# Steps to solve the problem.


# 5. sentence_maker initial solution
# def sentence_maker(array)
# 	sentence = nil
# 	array.each do |string|
# 		sentence + " " + string  
# end
# return sentence + "."
# end

# 6. sentence_maker refactored solution
def sentence_maker(array)
p array.join(' ').capitalize + '.'
end

sentence_maker(['Hello', ',', 'my', 'name', 'is', 'David'])
