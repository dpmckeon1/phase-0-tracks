# module Shout
# 	def self.yell_angrily(words)
# 		words + "!!!" + " :("
# 	end

# 	def self.yelling_happily(words)
# 		"This is how I yell happily: " + words + "!!!"
# 	end
# end

# angry_yelling = Shout.yell_angrily("Grrrrrrrrr")

# happy_yelling = Shout.yelling_happily("Yayayayaya")

# puts "Angry yelling: #{angry_yelling}"
# puts "Happy yelling: #{happy_yelling}"

# Mixin version

module Shout
	def yell_angrily(words)
		words + "!!!" + " :("
	end

	def yelling_happily(words)
		"This is how I yell happily: " + words + "!!!"
	end
end

class Toddler
	include Shout
end

class Baby
	include Shout
end


frankie = Toddler.new
puts frankie.yell_angrily("Waaaaaaaaaa")

suzie = Baby.new
puts suzie.yelling_happily("Hehehehe")
