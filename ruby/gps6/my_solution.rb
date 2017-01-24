# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
#require relative allows a program to access data within the same folder structure. 
#require allows you to bring in gems and libraries.
#
require_relative 'state_data'

class VirusPredictor
#creates a new object based on an object class that has already been determined 
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
#calls previous two methods within this method
  
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

 private
#predicts the number of deaths based on population density and population per state
  def predicted_deaths
    # predicted deaths is solely based on population density
    factor = case @population_density
    when 0...50 then 0.05
    when 50...100 then 0.1
    when 100...150 then 0.2
    when 150...200 then 0.3
    else 0.4
    end
    number_of_deaths = (@population * factor).floor
  print "#{@state} will lose #{number_of_deaths} people in this outbreak"
end

 #   if @population_density >= 200
 #     number_of_deaths = (@population * 0.4).floor
 #   elsif @population_density >= 150
 #     number_of_deaths = (@population * 0.3).floor
 #   elsif @population_density >= 100
  #    number_of_deaths = (@population * 0.2).floor
  #  elsif @population_density >= 50
 #     number_of_deaths = (@population * 0.1).floor
  #  else
  #    number_of_deaths = (@population * 0.05).floor
  #  end
  #  print "#{@state} will lose #{number_of_deaths} people in this outbreak"
 # end

#based on the population density this method determines speed of virus spread
  def speed_of_spread
    #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

  factor = case @population_density
      when 0...50 then speed += 2.5
      when 50...100 then speed += 2
      when 100...150 then speed += 1.5
      when 150...200 then speed += 1
      else speed += 0.5
      end

  puts " and will spread across the state in #{speed} months.\n\n"
=begin
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
=end
  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state
STATE_DATA.each do |state_name,population_data|
  population_density=population_data[:population_density]
  population=population_data[:population]
  states=VirusPredictor.new(state_name,population_density,population) 
  states.virus_effects
end 


#=======================================================================
# Reflection Section

#What are the differences between the two different hash syntaxes shown in the state_data file?
#They are displayed differently. One uses a colon and the other uses an arrow. Also, the state's
#keys are strings but the others are symbols.

#What does require_relative do? How is it different from require?
#Require relative allows a program to access data within the same folder structure. 
#Require allows you to bring in gems and libraries.

#What are some ways to iterate through a hash?
#You can use .each or .map...

#When refactoring virus_effects, what stood out to you about the variables, if anything?
#Since we already initialized the variables we didn't need to repeat ourselves by providing
#them again.

#What concept did you most solidify in this challenge?
#Working with hashes inside hashes. 

