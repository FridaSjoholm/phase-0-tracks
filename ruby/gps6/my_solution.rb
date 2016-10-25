# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
# Require and require relative lets the file use information form another file, by require relative
# we dont have to write a path to the file but expect it to be in the same folder. 
require_relative 'state_data'

class VirusPredictor

  # Creates a new instance of the class and gives instance variables their correct name
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end


  #Calls the two following methods
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private
  # Calculates predicted deaths based on population density and population by using conditional
  # logic. Also prints the data. 
  def predicted_deaths
    # predicted deaths is solely based on population density

    if @population_density >= 200 
      incrementer = 0.4  
    elsif @population_density >= 150
      incrementer = 0.3
    elsif @population_density >= 100
      incrementer = 0.2
    elsif @population_density >= 50
      incrementer = 0.1
    else
      incrementer = 0.05
    end
    print "#{@state} will lose #{(@population * incrementer).floor} people in this outbreak"

  end

  # Calculates speed of spread with conditional logic looking at poulation density. 
  # Also prints data
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    if @population_density >= 200
      speed = 0.5
    elsif @population_density >= 150
      speed = 1
    elsif @population_density >= 100
      speed = 1.5
    elsif @population_density >= 50
      speed = 2
    else
      speed = 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

STATE_DATA.each do |state, population_data|
  state = VirusPredictor.new(state, population_data[:population_density], population_data[:population])
  state.virus_effects
end

#=======================================================================
# Reflection Section

#What are the differences between the two different hash syntaxes shown in the state_data file?
  # The arrow ( => ) can be used when keys are variables are in any form, where as the syntax used here:
  #(population_density: 94.65) is made for when the key is a symbol
#What does require_relative do? How is it different from require?
  #Require and require relative lets the file use information from another file, by require relative
  # we dont have to write a path to the file but expect it to be in the same folder. If we want to 
  #relate to a file that is in another folder we can use relate and a path to that file.
#What are some ways to iterate through a hash?
  #Use each, hash.each for either key, value or both
#When refactoring virus_effects, what stood out to you about the variables, if anything?
  #The fact that we don't need to pass in and out instance variables within a class.
#What concept did you most solidify in this challenge?
  #The concept of scope within and outside classes and methods. 