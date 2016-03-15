# Build a simple guessing game


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: A guess or whether the game is solved
# Output: Either high, low, true or false
# Steps:
=begin

Initialize the method by referencing the instance method

=end

# Initial Solution

class GuessingGame
	def initialize(answer)
		@answer = answer
	end

	def guess(guess)
		@recent = nil
		if guess > @answer
			p :high
			@recent = :high
		elsif guess < @answer
			p :low
			@recent = :low
		else
			p :correct
			@recent = :correct
		end
	end

	def solved?
		if @recent == :correct
			p true
		else
			p false
		end
	end
end


# Reflection

=begin

How do instance variables and methods represent the characteristics and behaviors (actions) of
a real-world object?

Instance variables represents anything that exists with the creation of an instance. So it's a lot like how
the moon was created because the earth was created. Methods are like functions within that environment, so like
the weather on earth or tectonic movements on earth.

When should you use instance variables? What do they do for you?

You should use instance variables when you only need the variable within the instance, and not outside.

Explain how to use flow control. Did you have any trouble using it in this challenge? If so, 
what did you struggle with?

Flow control is making conditional statements and running blocks if those conditions are true. I feel like
this was a good practice in terms of how to use flow control, and not too challenging.

Why do you think this code requires you to return symbols? What are the benefits of using symbols?

You require symbols because symbols are unique with the same object_id. Symbols are more aesthetically pleasing
in my opinion, and aren't as malleable as strings, as they are immutable.

=end