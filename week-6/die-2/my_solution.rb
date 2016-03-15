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



# Reflection
=begin
	
What were the main differences between this die class and the last one you created in terms of implementation?
 Did you need to change much logic to get this to work?

The main logic is still there, it's just taking the rand operator to a new level.

What does this exercise teach you about making code that is easily changeable or modifiable? 

I think this code teaches us that code should be clear, concise, and the variables/method names should
represent exactly what it is.

What new methods did you learn when working on this challenge, if any?

I didn't exactly learn any new methods in this challenge.

What concepts about classes were you able to solidify in this challenge?

I was able to solidify the concept of initializing my class before doing anything in order to set the
instance variables needed.
	
=end