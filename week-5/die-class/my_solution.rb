# Die Class 1: Numeric

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.

# 0. Pseudocode

# Input: either show the sides or roll the die
# Output: shows 6 as sides and a random number between 1 and 6 for roll
# Steps: Create a new class Die
# 


# 1. Initial Solution

class Die
  def initialize(sides)
    @sides = sides
    if @sides <= 1
    	raise ArgumentError.new("I need more sides!")
    end
  end

  def sides
    p @sides
  end

  def roll
    p rand(1..(@sides.to_i))
  end
end

die = Die.new(20)
die.sides
die.roll


# 4. Reflection

=begin
	
What is an ArgumentError and why would you use one?

An argument error shows when you input an incorrect argument, for example, giving a method 2 arguments when it only has
1 parameter.

What new Ruby methods did you implement? What challenges and successes did you have in implementing them?

This is the first time making a class and also the first time using initialize and understanding what it does.
Also the first time using the random number generator.

What is a Ruby class?

A ruby class is an object that in a sense 'houses' a bunch of methods.

Why would you use a Ruby class?

It helps you organize your methods when you have a very big program.

What is the difference between a local variable and an instance variable?

A local variable can only be called upon within the block of its initialization. An instance variable is available throughout
the entire instance.

Where can an instance variable be used?

An instance variable can be used in the particular object.
	
=end
