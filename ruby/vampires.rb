current_year = Time.new.year

p "How many employees to be processed? Enter number: "
employees_to_process = gets.chomp.to_i

for i in 0..(employees_to_process - 1)
	p "Processing Employee Number: #{i+1}"

	p "What is your name?"
	user_name = gets.chomp

	if user_name == "Drake Cula" || user_name == "Tu Fang"
		vampire_name_match = true
	else
		vampire_name_match = false
	end

	p "How old are you?"
	user_age = gets.chomp.to_i

	p "What year were you born?"
	user_birthyear = gets.chomp.to_i

	user_agebybirthyear = current_year - user_birthyear 

	if user_agebybirthyear == user_age
		age_verified = true
	else
		age_verified = false
	end

	p "Our company cafeteria serves garlic bread. Should we order some for you? (Y/N)"
	user_garlicresponse = gets.chomp

	if user_garlicresponse == 'Y'
		user_garlicpref = true
	else
		user_garlicpref = false
	end

	p "Would you like to enroll in the company's health insurance? (Y/N)"
	user_insureresponse = gets.chomp

	if user_insureresponse == 'Y'
		user_insurepref = true
	else
		user_insurepref = false
	end

	p "Name all of your allergies, one at a time. When finished, type done"

	allergy = "tbd"
		
	until allergy == "done" || allergy =="sunshine"
		allergy = gets.chomp
	end

	if allergy == "sunshine"
		sunshine_allergy = true;
	else 
		sunshine_allergy = false;
	end


	if vampire_name_match == true
		vampire_result = "Definitely a vampire."
	elsif sunshine_allergy || (!age_verified && (user_garlicpref || user_insurepref))
		vampire_result = "Probably a vampire."
	elsif age_verified && (user_garlicpref || user_insurepref)
		vampire_result = "Probably not a vampire."
	elsif !(age_verified || user_garlicpref || user_insurepref)
		vampire_result = "Almost certainly a vampire."
	else
		vampire_result = "Results inconclusive."
	end

	p vampire_result
end

p "Actually, never mind! What do these questions have to do with anything? Let's all be friends."