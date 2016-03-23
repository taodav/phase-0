# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
# Require_relative links to the file stated based on the relative path
# It differs from require because it loads to the file relative to the file it is in.
require_relative 'state_data'

class VirusPredictor

  # Sets the arguments as instance variables
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end


  # Returns the values of predicted_deaths and speed_of_spread
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private
  
  # Based on the population density, predicted_deaths will predict the number of deaths in a state.
  def predicted_deaths
    # predicted deaths is solely based on population density
    if @population_density >= 200
      number_of_deaths = (@population * 0.4)
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3)
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2)
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1)
    else
      number_of_deaths = (@population * 0.05)
    end
    # number_of_deaths = (@population * (@population_density)/500)
    print "#{@state} will lose #{number_of_deaths.floor} people in this outbreak"

  end

  # Based on population density, calculates the speed of spread (months it takes to spread across a state)
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else
      speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"
  end

end

def all_states
  STATE_DATA.each do |k,v|
    states = VirusPredictor.new(k, v[:population_density], v[:population])
    states.virus_effects
  end
end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
alaska.virus_effects

all_states

#=======================================================================
# Reflection Section
=begin
What are the differences between the two different hash syntaxes shown in the state_data file?
One of the hash syntaxes use strings and the => indicator to indicate key/value pairs. The other
uses symbols as keys with the semi-colon at the end of the symbol instead of the front to denote the
key/value pair.

What does require_relative do? How is it different from require?
Require_relative links to the file stated based on the relative path.
It differs from require because it loads to the file relative to the file it is in.

What are some ways to iterate through a hash?
The easiest way would be to use the iterator each method, which iterates through each key/value pair.
Another way would be to use map, which also goes through each element of the hash, but returns a new array
with the return values of each block iterated.

When refactoring virus_effects, what stood out to you about the variables, if anything?
All the variables in virus_effects were unnecessary, as they were all instance variables already
defined in initialize.

What concept did you most solidify in this challenge?
I think I most solidfied the concept of refactoring in this challenge - really looking into the details
which you can improve.

=end