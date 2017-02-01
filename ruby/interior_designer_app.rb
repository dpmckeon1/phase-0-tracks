my_var = "Test"

applicant = {
	name: "Dan McKeon",
	address: "555 Fake Street",
	email: "fakeemail@gmail.com",
	phone: "555-123-4567",
	blue_pref: "Turquoise",
	wallpaper_pref: "Chevrons",
	ombre_opinion: "Fierce"
}

applicant[:name] = "New Dan"
applicant[:blue_pref] = "Teal"

applicant[:hired] = "Hired"

applicant[:name] + applicant[:wallpaper_pref]

p applicant