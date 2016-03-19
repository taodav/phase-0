#Attr Methods

# I worked on this challenge [by myself, with:]

# I spent [#] hours on this challenge.

# Pseudocode

# Input:
# Output:
# Steps:

class NameData
	attr_reader :name
	def initialize
		@name = "David"
	end

end


class Greetings
	def initialize
		@name_data = NameData.new
	end

	def hello
		puts "Hello #{@name_data.name}! How's your day going?"
	end
end

greeting = Greetings.new
greeting.hello

# Reflection

=begin
	
Release 1
What are these methods doing?
These methods are defining variables and printing those variables.

How are they modifying or returning the value of instance variables?
They are modifying them through setting the instance variable to a new value in another method.
They return the value of the instance variable by calling on it.

Release 2
What changed between the last release and this release?
The method that called on and returned the @age variable was commented out.
In it's place is the attribute reader function that replaces the need to call on this variable.

What was replaced?
The method that called on the age instance variable was replaced with the attribute reader.

Is this code simpler than the last?
Yes, it reduces the lines of code significantly.

Release 3
What changed between the last release and this release?
Added attr_writer: age
commented out method that redefined age variable.

What was replaced?
An attribute writer method has replaced the method that changes the age instance variable's
value.

Is this code simpler than the last?
Yes, just like the attribute reader method previously seen, it removes a lot of lines of code.

Release 6
What is a reader method?
A reader method allows you to call upon instance variables without having to define them in a
separate method.

What is a writer method?
A writer method allows you to redefine instance variables without a separate method that has to do
that for you.

What do the attr methods do for you?
They reduce the amount of code in your class definitions - making for simpiler and clearer code.

Should you always use an accessor to cover your bases? Why or why not?
Not advisable - seeing as using writer or reader clarifies your intent of defining the attribute method.

What is confusing to you about these methods?
I think the most confusing thing about these methods is learning how to call upon them in different
instances - more practice with with these things should clear things up.


=end