# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [#] hours on this challenge.


# Release 0: Pseudocode
# Outline:
=begin
# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  Define a method which generates both number and letter
  set letter variable equal to a letter in an array with BINGO in it through randomly
  selecting a letter based on it's index.
  set number variable equal to random number beween 1 and 99

# Check the called column for the number called.
  if the column corresponding to the letter has the number called

# If the number is in the column, replace with an 'x'
  then replace array element with an X

# Display a column to the console
  #fill in the outline here

# Display the board to the console (prettily)
  p entire array with new X

# Initial Solution
=end

# class BingoBoard

# attr_accessor :letter
# attr_accessor :number
# attr_reader :bingo

#   def initialize(board)
#     @bingo_board = board
#     @bingo = ["B", "I", "N", "G", "O"]
#   end

#   def call_digit
#     @letter = "I"
#     #@bingo[rand(0..4)]
#     @number = 69
#     #rand(1...100)
#     p "The digit called is #{@letter}#{@number}!"
#   end

#   def check_board
#     num_range = []
#     @bingo_board.each do |element|
#       num_range << element[@bingo.index(@letter)]
#     end
#     p "Your number range is #{num_range}"
#     #array(index) in which our number appears: num_range.index(@number)
#     num_range.each do |a|
#       if a == @number
#     #     #if a equals to the number called
#     #     #map out the arrays
#     #     #if the array has number included in it, change the number to X
#     #     #replace the number with X
#         @bingo_board.map do |b|
#           if b.include?(@number)
#             b[b.index(@number)] = "X"
#           end
#         end
#       end
#     end
#     p @bingo_board
#   end

# end

# Refactored Solution

class BingoBoard

attr_accessor :letter
attr_accessor :number
attr_reader :bingo

  def initialize(board)
    @bingo_board = board
    @bingo = ["B", "I", "N", "G", "O"]
  end

  def call_digit
    @letter = @bingo[rand(0..4)]
    #set the letter equal to a random letter with an index of @bingo that's a random number between 0 and 4
    if @letter == "B"
      @number = rand(1..15)
    elsif @letter == "I"
      @number = rand(16..30)
    elsif @letter == "N"
      @number = rand(31..45)
    elsif @letter == "G"
      @number = rand(46..60)
    elsif @letter == "O"
      @number = rand(61..75)
    #Depending on the letter, set the number equal to a random number in the range of each.
    end

    p "The digit called is #{@letter}#{@number}!"
  end

  def check_board
    num_range = []
    @bingo_board.each do |element|
      num_range << element[@bingo.index(@letter)]
    end
    #iterate through the bingo board
    #push the elements that correspond to the selected letter by setting the index in accordance to @letter
    p "Your number range is #{num_range}"
    #IF the number range index is nil, tell the player no numbers were called.
    if num_range.index(@number) == nil
      p "Sorry! None of your numbers were called"
    #ELSE set the called number as "X" by calling on the nested array through the use of indexing @number and 
    #@letter.
    else
    @bingo_board[num_range.index(@number)][@bingo.index(@letter)] = "X"
    end
    #return and print the changed bingo board
    p @bingo_board
  end

  def bingo_card
    num_of_arrays = 5
    #Set the number of arrays
    @bingo_board = []
    #Clear bingo_board and make it an empty array
    sub_board = []
    #create a variable for the nested arrays and set it equal to an empty array
    until num_of_arrays == 0
      #UNTIL the variable num_of_arrays is equal to 0
      sub_board = [rand(1..15), rand(16..30), rand(31..45), rand(46..60), rand(61..75)]
      #Set sub_board equal to an array with 5 random numbers in their respective ranges.
      @bingo_board.push(sub_board)
      #push this sub_board onto the main @bingo_board
      num_of_arrays -= 1
      #minus 1 from the counter
    end
    #repeat 5 times to make 5 arrays of random numbers in the set ranges.
    @bingo_board[2][2] = "  "
    #set the middle space as blank.
    p @bingo_board
    #return bingo_board.
  end

end

#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)
new_game.bingo_card
new_game.call_digit
new_game.check_board

#Reflection

=begin

How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?
To be completely honest, I felt like pseudocoding for this challenge - while helpful at some points,
kind of made the code a lot messier. I think I use pseudocode only when I really need to lay my thoughts
out and organize them.

What are the benefits of using a class for this challenge?
Making an entirely new class allows you to make new objects of that class, which makes sense in 
this case - where you have new bingo games for every class.

How can you access coordinates in a nested array?
You can access coordinates in a nested array through using more than one square bracket when calling
an element in an array (in this case, it's another array!)

What methods did you use to access and modify the array?
In my opinion, the easiest way to modify an array with depth is to use multiple iterators.
I used iterators to modify the array, as well as the index method to call upon the array's indices.

Give an example of a new method you learned while reviewing the Ruby docs. Based on what you see 
in the docs, what purpose does it serve, and how is it called?
I learnt to use the index method - it gives you the index number of a certain element that you
ask of it. You call it by sending the message .index to your array object, with the object you want 
to look for in parentheses after the message .index.

How did you determine what should be an instance variable versus a local variable?
If I needed the variable accross my methods, then I used an instance method. Otherwise, I used
local variables for variables that I only needed inside methods.

What do you feel is most improved in your refactored solution?
I managed to cut down on 7 lines of code and many more lines of pseudocode in my refactored solution
when it came to finding the element in the array that was called, and putting an "X" in its place.

=end