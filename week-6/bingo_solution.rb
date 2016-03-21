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
    @number = rand(1...100)
    p "The digit called is #{@letter}#{@number}!"
  end

  def check_board
    num_range = []
    @bingo_board.each do |element|
      num_range << element[@bingo.index(@letter)]
    end
    p "Your number range is #{num_range}"
    #array(index) in which our number appears: num_range.index(@number)
    if num_range.index(@number) == nil
      p "Sorry! None of your numbers were called"
    else
    @bingo_board[num_range.index(@number)][@bingo.index(@letter)] = "X"
    end
    p @bingo_board
  end

  def bingo_card
    num_of_arrays = 5
    @bingo_board = []
    sub_board = []
    until num_of_arrays == 0
      sub_board = [rand(1..15), rand(16..30), rand(31..45), rand(46..60), rand(61..75)]
      @bingo_board.push(sub_board)
      num_of_arrays -= 1
    end
    @bingo_board[2][2] = "  "
    p @bingo_board
  end

end

#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)
# new_game.call_digit
# new_game.check_board
new_game.bingo_card

#Reflection