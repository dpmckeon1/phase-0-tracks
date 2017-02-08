class Santa
	def initialize
		puts "Initializing Santa instance..."
	end

	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies(cookie_type)
		puts "That was a good #{cookie_type}!"
	end
end

santa_jim = Santa.new
santa_jim.speak
santa_jim.eat_milk_and_cookies("Chocolate Chip Cookie")