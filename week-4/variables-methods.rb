puts 'Hi there! What\'s your first name?'
firstName = gets.chomp
puts 'what\'s your middle name?'
middleName = gets.chomp
puts 'what\'s your last name?'
lastName = gets.chomp
puts 'Hi ' + firstName + ' ' + middleName + ' ' + lastName + '! Hope you have a great day!'

puts 'So what\'s your favorite number?'
favoriteNum = gets.chomp
biggerNum = favoriteNum.to_i + 1
puts 'Ha ha! But ' + biggerNum.to_s + ' is an even bigger number!'

# How do you define a local variable?

# A local variable normally has a name starting with a lowercase letter
# The scope of a local variable is only locally - in a method or block etc.

# How do you define a method?

# you define a method by starting a method definition with 'def', then writing
# the object which method belongs, then the dot operator, and finally the
# method name. Afterwards comes the method body, then the end method
# definition.

# What is the difference between a local variable and a method?

# A local variable represents a state of an object
# whereas a method is the action that the object takes based on the message
# it receives.

# How do you run a ruby program from the command line?

# using ruby -e 'your ruby code in here'

# How do you run an RSpec file from the command line?

# you run an RSpec file by typing rspec in the command line, followed by
# the relative path of the RSpec file.

# What was confusing about this material? What made sense?

# The most confusing part about this material was figuring out how to
# return the proper strings or integers in order for rspec to acknowledge
# the returned string/integer. I only realized after many tests and tries
# with two rspec files that puts and print both have a return value of 0,
# whereas the method p actually returns the string/integer you need for
# rspec.

# https://github.com/taodav/phase-0/blob/master/week-4/address/my_solution.rb
# https://github.com/taodav/phase-0/blob/master/week-4/math/my_solution.rb
