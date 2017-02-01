city_facts = {
	seattle: {
		population: 652405, 
		top_attractions: [
			"Space Needle",
			"Pike Place Market"
		],
		pro_teams: {
			football: "Seahawks",
			baseball: "Mariners",
			soccer: "Sounders"
		}
	},
	minneapolis: {
		population: 400070,
		top_attractions: [
			"Mall of America",
			"Cherry in the Spoon"
		],
		pro_teams: {
			football: "Vikings",
			baseball: "Twins",
			basketball: "Timeberwolves"
		}
	},
	chicago: {
		population: 2720546,
		top_attractions: [
			"Navy Pier",
			"Millennium Park"
		],
		pro_teams: {
			football: "Bears",
			baseball: [
				"Cubs",
				"White Sox"
			],
			basketball: "Bulls",
			hockey: "Black Hawks",
			soccer: "Fire"
		}
	}
}

puts "Seattle's population is #{city_facts[:seattle][:population]}"
puts "The top attractions in Minneapolis are: #{city_facts[:minneapolis][:top_attractions]}"
puts "Chicago's favorite baseball teams is: #{city_facts[:chicago][:pro_teams][:baseball].first}"
puts "The last attraction in the array for Seattle is: #{city_facts[:seattle][:top_attractions][-1]}"