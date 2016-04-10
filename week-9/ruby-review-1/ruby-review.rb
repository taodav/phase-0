# Numbers to English Words


# I worked on this challenge [by myself, with: ].
# This challenge took me [#] hours.


# Pseudocode
=begin

DEFINE a method that takes in a number as a parameter.
Set variable unit equal to empty string
turn the number into an array
IF argument is greater than 0 AND less than 100
  IF number length is equal to 1
  IF number at position 0 is 1, set unit equal to 'one'
  ELSIF....
  Until unit is set to 'nine'
  IF the number at position 0 is 1
    IF the number at position 1 is 0, then print 'ten'
    IF the number at position 1 is 1, then print 'Eleven'
    ELSIF the number at position 1 is 2, then print 'Twelve'
    ELSIF the number at position 1 is 3, then print 'Thirteen'
    ... until twenty
  ELSIF the number at position 0 is 2
    puts 'twenty ' and the variable unit
  ELSIF... for everything up to 9
ELSE print "That's too high/low for me to count!"

=end

# Initial Solution

# def to_num(num)
#   unit = ""
#   array = num.to_s.split('').map(&:to_i)
#   if num > 0 && num < 100
#     if array[-1] == 1
#       unit = "one"
#     elsif array[-1] == 2
#       unit = "two"
#     elsif array[-1] == 3
#       unit = "three"
#     elsif array[-1] == 4
#       unit = "four"
#     elsif array[-1] == 5
#       unit = "five"
#     elsif array[-1] == 6
#       unit = "six"
#     elsif array[-1] == 7
#       unit = "seven"
#     elsif array[-1] == 8
#       unit = "eight"
#     elsif array[-1] == 9
#       unit = "nine"
#     end
#     if array.length == 1
#       p unit
#     elsif array.length == 2
#       if array[0] == 1
#         if unit == 0
#           p "ten"
#         elsif unit == 2
#           p "twelve"
#         elsif unit == 3
#           p "thirteen"
#         elsif unit == 4
#           p "fourteen"
#         elsif unit == 5
#           p "fifteen"
#         elsif unit == 6
#           p "sixteen"
#         elsif unit == 7
#           p "seven"
#         elsif unit == 8
#           p "eighteen"
#         elsif unit == 9
#           p "nineteen"
#         end
#       elsif array[0] == 2
#         if array[-1] == 0
#           p "twenty"
#         else
#           p "twenty " + unit
#         end
#       elsif array[0] == 3
#         if array[-1] == 0
#           p "thirty"
#         else
#           p "thirty " + unit
#         end
#       elsif array[0] == 4
#         if array[-1] == 0
#           p "fourty"
#         else
#           p "fourty " + unit
#         end
#       elsif array[0] == 5
#         if array[-1] == 0
#           p "fifty"
#         else
#           p "fifty " + unit
#         end
#       elsif array[0] == 6
#         if array[-1] == 0
#           p "sixty"
#         else
#           p "sixty " + unit
#         end
#       elsif array[0] == 7
#         if array[-1] == 0
#           p "seventy"
#         else
#           p "seventy " + unit
#         end
#       elsif array[0] == 8
#         if array[-1] == 0
#           p "eighty"
#         else
#           p "eighty " + unit
#         end
#       elsif array[0] == 9
#         if array[-1] == 0
#           p "ninety"
#         else
#           p "ninety " + unit
#         end
#       end
#     end
#   else
#      raise ArgumentError.new('value needs to be an integer between 1 and 99')
#     end
# end

# to_num(79)

# Refactored Solution

def to_num(num)
  unit = ""
  array = num.to_s.split('').map(&:to_i)
  if num > 0 && num < 100
    if array [-1] == 0
      unit = ""
    elsif array[-1] == 1
      unit = "one"
    elsif array[-1] == 2
      unit = "two"
    elsif array[-1] == 3
      unit = "three"
    elsif array[-1] == 4
      unit = "four"
    elsif array[-1] == 5
      unit = "five"
    elsif array[-1] == 6
      unit = "six"
    elsif array[-1] == 7
      unit = "seven"
    elsif array[-1] == 8
      unit = "eight"
    elsif array[-1] == 9
      unit = "nine"
    end
    if array.length == 1
      p unit
    elsif array.length == 2
      if array[0] == 1
        if unit == 0
          p "ten"
        elsif unit == 2
          p "twelve"
        elsif unit == 3
          p "thirteen"
        elsif unit == 4
          p "fourteen"
        elsif unit == 5
          p "fifteen"
        elsif unit == 6
          p "sixteen"
        elsif unit == 7
          p "seven"
        elsif unit == 8
          p "eighteen"
        elsif unit == 9
          p "nineteen"
        end
      elsif array[0] == 2
          p "twenty " + unit
      elsif array[0] == 3
          p "thirty " + unit
      elsif array[0] == 4
          p "fourty " + unit
      elsif array[0] == 5
          p "fifty " + unit
      elsif array[0] == 6
          p "sixty " + unit
      elsif array[0] == 7
          p "seventy " + unit
      elsif array[0] == 8
          p "eighty " + unit
      elsif array[0] == 9
          p "ninety " + unit
      end
    end
  else
     raise ArgumentError.new('value needs to be an integer between 1 and 99')
    end
end

to_num(70)


# Reflection
=begin
What concepts did you review in this challenge?

Through this challenge I reviewed flow control in ruby and the different ruby method calls.

What is still confusing to you about Ruby?

I think out of all the languages we've been exposed to in phase 0, ruby is my most comfortable
programming language. Although I could use more practice on class definitions and initializing.

What are you going to study to get more prepared for Phase 1?

To get ready for phase 1, I will try to finish as much of the Well-Grounded Rubyist as possible.

=end