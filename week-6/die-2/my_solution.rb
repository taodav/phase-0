# Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: Array with different number of elements (strings, integers etc.)
# Output: A randomly selected element of the array
# Steps:
=begin
	
Initialize the instance variable first
define sides method
sides method should count the number of elements in the array and return that number
define method roll, which returns random value in array
	
=end


# Initial Solution

class Die
  def initialize(labels)
  	@labels = labels
  	if labels.length < 1
    	raise ArgumentError.new("I need more sides!")
    end
  end

  def sides
  	p @labels.length
  end

  def roll
  	random_num = rand(0..(@labels.length - 1))
  	p @labels[random_num]
  end
end

d = Die.new(["hello", 2, "my", "name", 3])
d.sides
d.roll


# Refactored Solution








# Reflection