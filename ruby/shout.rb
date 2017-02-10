module Shout
	def self.yell_angrily(words)
		words + "!!!" + " :("
	end

	def self.yelling_happily(words)
		"This is how I yell happily: " + words + "!!!"
	end
end

angry_yelling = Shout.yell_angrily("Grrrrrrrrr")

happy_yelling = Shout.yelling_happily("Yayayayaya")

puts "Angry yelling: #{angry_yelling}"
puts "Happy yelling: #{happy_yelling}"
