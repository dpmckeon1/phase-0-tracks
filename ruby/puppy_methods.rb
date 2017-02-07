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

class HockeyPlayer
	
	def initialize
		puts "You've created a new hockey player"
	end

	def shoot(location)
		if location == "Upper Right"
			puts "You scored!"
		else
			puts "Big save by the goaltender."
		end
	end

	def check(checker_name, target_name)
		puts "#{checker_name} checked #{target_name}"
	end
end


goober = Puppy.new
goober.fetch("ball")

goober.speak(5)

goober.roll_over

p goober.dog_years(4)

goober.sit("Goober")

num_players = 0
hockey_team = []

until num_players == 50
	hockey_team[num_players] = HockeyPlayer.new
	num_players += 1
end


mario_lemieux = HockeyPlayer.new
mario_lemieux.shoot("Upper Right")
mario_lemieux.shoot("Center")
mario_lemieux.check("Mario Lemieux", "Joe Sakic")

hockey_team.each { |player| 
	player.shoot("Upper Right")
	player.check("Our guy", "Their guy")
}
