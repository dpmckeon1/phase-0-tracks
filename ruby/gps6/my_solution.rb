# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
#
#

require_relative 'state_data'
# require_relative specifies that it's in the same directory as this file

class VirusPredictor

  # initialize new instance of VirusPredictor with three parameters
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  # determining the impact of the virus by calling predicted_deaths and speed_of_spread
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private
  
  # predicting total # of deaths in given state based on pop density and population
  def predicted_deaths
    # predicted deaths is solely based on population density
    number_of_deaths =  if @population_density >= 200
                          num_deaths(0.4)
                        elsif @population_density >= 150
                          num_deaths(0.3)
                        elsif @population_density >= 100
                          num_deaths(0.2)
                        elsif @population_density >= 50
                          num_deaths(0.1)
                        else
                          num_deaths(0.05)
                        end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  # determining how many months it will take for the virus to spread across the state
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = if @population_density >= 200
              0.5
            elsif @population_density >= 150
              1
            elsif @population_density >= 100
              1.5
            elsif @population_density >= 50
              2
            else
              2.5
            end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

  def num_deaths(multiplier)
    (@population * multiplier).floor
  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects

STATE_DATA.each do |state, state_data|
  state = VirusPredictor.new(state, state_data[:population_density], state_data[:population])
  state.virus_effects
end

#=======================================================================
# Reflection Section