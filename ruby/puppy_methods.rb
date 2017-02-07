# PAIRING 6.2 WITH DAN McKEON

class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(num_times)
  	num_times.times {puts "Woof!"}
  end

  def roll_over
  	puts "*rolls over*"
  end

  def dog_years(human_years)
  	dog_age = human_years * 7
  	dog_age
  end

  def sit(dog_name)
  	puts "#{dog_name} is sitting like a dog" 
  end

  def initialize
  	puts "Initializing new puppy instance..."
  end


end

goober = Puppy.new
goober.fetch("ball")

goober.speak(5)

goober.roll_over

p goober.dog_years(4)

goober.sit("Goober")

