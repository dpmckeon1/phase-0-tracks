class Santa
	def initialize(gender, ethnicity)
		@gender = gender
		@ethnicity = ethnicity
		@age = 0
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		puts "Initializing Santa instance Gender: #{@gender}, Ethnicity: #{@ethnicity}, Age: #{@age}, and Reindeer Ranking: #{@reindeer_ranking}"
	end

	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies(cookie_type)
		puts "That was a good #{cookie_type}!"
	end
end

santa_jim = Santa.new("Male", "Hawaiian")
santa_jim.speak
santa_jim.eat_milk_and_cookies("Chocolate Chip Cookie")

genders = ["Male", "Female", "Cis", "Trans"]
ethnicities = ["White", "Latino", "Brazilian", "Portuguese", "Chinese", "Filipino"]

diverse_random_santas = []

10.times { |i|
	# diverse_random_santas << Santa.new(genders.sample, ethnicities.sample)
	diverse_random_santas[i] = Santa.new(genders.sample, ethnicities.sample)
}

diverse_nonrandom_santas = []

10.times { |i|
	gender_index = i % 4
	ethnicity_index = i % 6
	diverse_nonrandom_santas << Santa.new(genders[gender_index], ethnicities[ethnicity_index])
}

homogenous_santas = []

10.times {
	homogenous_santas << Santa.new(genders[1], ethnicities[1])
}