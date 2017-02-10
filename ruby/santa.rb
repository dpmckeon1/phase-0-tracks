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

	def celebrate_birthday
		puts "Previous age: #{@age}"
		@age += 1
		puts "New age: #{@age}"
	end

	def get_mad_at(reindeer_name)
		puts "Before delete_at: #{@reindeer_ranking}"
		reindeer_index = @reindeer_ranking.index(reindeer_name)
		@reindeer_ranking.delete_at(reindeer_index)
		@reindeer_ranking << reindeer_name
		puts "After delete_at: #{@reindeer_ranking}"
	end

	# Setter methods
	def gender=(new_gender)
		@gender = new_gender
		puts "New gender: #{@gender}"
	end
end

# santa_jim = Santa.new("Male", "Hawaiian")
# santa_jim.speak
# santa_jim.eat_milk_and_cookies("Chocolate Chip Cookie")

# genders = ["Male", "Female", "Cis", "Trans"]
# ethnicities = ["White", "Latino", "Brazilian", "Portuguese", "Chinese", "Filipino"]

# diverse_random_santas = []

# 10.times { |i|
# 	# diverse_random_santas << Santa.new(genders.sample, ethnicities.sample)
# 	diverse_random_santas[i] = Santa.new(genders.sample, ethnicities.sample)
# }

# diverse_nonrandom_santas = []

# 10.times { |i|
# 	gender_index = i % 4
# 	ethnicity_index = i % 6
# 	diverse_nonrandom_santas << Santa.new(genders[gender_index], ethnicities[ethnicity_index])
# }

# homogenous_santas = []

# 10.times {
# 	homogenous_santas << Santa.new(genders[1], ethnicities[1])
# }

santa_jim = Santa.new("Male", "Hawaiian")
santa_jim.celebrate_birthday
santa_jim.get_mad_at("Vixen")
santa_jim.gender = "Cis"