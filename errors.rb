# Analyze the Errors

# I worked on this challenge [by myself].
# I spent [#] hours on this challenge.

# --- error -------------------------------------------------------

# cartmans_phrase = "Screw you guys " + "I'm going home."

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

def cartman_hates(thing)
  while true
    puts "What's there to hate about #{thing}?"
	end
end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
# error.rb
# 2. What is the line number where the error occurs?
# 170
# 3. What is the type of error message?
# syntax error
# 4. What additional information does the interpreter provide about this type of error?
# unexpected end-of-input, expecting the keyword end
# 5. Where is the error in the code?
# in line 16
# 6. Why did the interpreter give you this error?
# missing an end for the while statement

# --- error -------------------------------------------------------

# south_park

# 1. What is the line number where the error occurs?
# 36
# 2. What is the type of error message?
# undefined local variable or method
# 3. What additional information does the interpreter provide about this type of error?
# NameError
# 4. Where is the error in the code?
# Ruby can't tell if this is a local variable or method
# 5. Why did the interpreter give you this error?
# Because it could be either a local variable or method.

# --- error -------------------------------------------------------

def cartman()
end

# 1. What is the line number where the error occurs?
# 51
# 2. What is the type of error message?
# undefined method 'cartman'
# 3. What additional information does the interpreter provide about this type of error?
# NoMethodError
# 4. Where is the error in the code?
# Since the cartman method is undefined, Ruby doesn't know what to do with
# the undefined method.
# 5. Why did the interpreter give you this error?
# Because the method is undefined.

# --- error -------------------------------------------------------

def cartmans_phrase(fatboy)
  puts "I'm not fat; I'm big-boned!"
end

cartmans_phrase('I hate Kyle')

# 1. What is the line number where the error occurs?
# 68
# 2. What is the type of error message?
# wrong number of arguments (1 for 0)
# 3. What additional information does the interpreter provide about this type of error?
# ArgumentError
# 4. Where is the error in the code?
# We're calling on a method with an argument when the original method
# isn't taking any formal parameters
# 5. Why did the interpreter give you this error?
# Missing formal parameters.

# --- error -------------------------------------------------------

def cartman_says(offensive_message)
  puts offensive_message
end

cartman_says('respect my authoritay')

# 1. What is the line number where the error occurs?
# 88
# 2. What is the type of error message?
# wrong number of arguments (0 for 1)
# 3. What additional information does the interpreter provide about this type of error?
# ArgumentError
# 4. Where is the error in the code?
# When the method is called upon, it's not taking any arguments.
# 5. Why did the interpreter give you this error?
# Mismatch between number of formal parameters and arguments.



# --- error -------------------------------------------------------

def cartmans_lie(lie, name)
  puts "#{lie}, #{name}!"
end

cartmans_lie('A meteor the size of the earth is about to hit Wyoming!', 'Kyle')

# 1. What is the line number where the error occurs?
# 109
# 2. What is the type of error message?
# wrong number of arguments (1 for 2)
# 3. What additional information does the interpreter provide about this type of error?
# ArgumentError
# 4. Where is the error in the code?
# The called upon method only gives one argument when there needs to be
# two
# 5. Why did the interpreter give you this error?
# Mismatch between number of formal parameters and arguments.

# --- error -------------------------------------------------------

"Respect my authoritay!" * 5

# 1. What is the line number where the error occurs?
# 129
# 2. What is the type of error message?
# String can't be coerced into Fixnum
# 3. What additional information does the interpreter provide about this type of error?
# TypeError
# 4. Where is the error in the code?
# Used a string as a method.
# 5. Why did the interpreter give you this error?
# Ruby is reading 5 as the object and * "respect my authoritay!" as the
# method. This should be swapped.

# --- error -------------------------------------------------------

amount_of_kfc_left =  0/20


# 1. What is the line number where the error occurs?
# 145
# 2. What is the type of error message?
# Divided by zero
# 3. What additional information does the interpreter provide about this type of error?
# ZeroDivisionError
# 4. Where is the error in the code?
# 20 is divided by 0
# 5. Why did the interpreter give you this error?
# Ruby cannot divide by 0.

# --- error -------------------------------------------------------

# require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
# 161
# 2. What is the type of error message?
# cannot load such file
# 3. What additional information does the interpreter provide about this type of error?
# LoadError
# 4. Where is the error in the code?
# Cartmans_essay.md does not exist
# 5. Why did the interpreter give you this error?
# Ruby gave this error because the essay doesn't exist.


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.

# Which error was the most difficult to read?

# The last error was the hardest to read - I thought loading a document
# required a load or require.

# How did you figure out what the issue with the error was?

# After seeing the error type (LoadError) I understood that Ruby was trying
# to load the file.

# Were you able to determine why each error message happened based 
# on the code? 

# Yes, I was.

# When you encounter errors in your future code, what process will you 
# follow to help you debug?

# It's a pretty stepwise method:
# first, check the line where the error is in. Next, read over the block of
# code that needs fixing. Afterwards, look at the description and error 
# type. That should be enough to debug the code.