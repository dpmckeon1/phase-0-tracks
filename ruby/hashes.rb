# Interior Designer Client App Pseudocode

# 1) Prompt designer/user for inputs
# 2) Accept the following symbol and data input class in hash:
# 	* name: [String] # Client name
# 	* email: [String] # Client email
# 	* status: [String] # Client status: "Prospective", "Current", "Past"
# 	* discount: [Boolean] # Whether or not client is eligible for family and friends discount
# 	* city: [String] # Project city
# 	* state: [String] # Project state
# 	* young_children: [Boolean] # True if client has young children and design considerations should be made
# 	* theme: [String] # Design theme: "Modern", "Minimalist", "Traditional"
# 	* space_sqft: [Integer] # Total square feet of project, rounded to nearest 100
# 	* num_rooms: [Integer] # Number of rooms in project space

# 3) Convert any user input that does not fit into classes above into those classes of data
# 4) Print out all data to screen
# 5) Give user choice (single character) to update piece of data or "none" if no additional data
# 6) Print final hash

p "Welcome to Design Client Interface 5000"
p "Please enter..."

p "Client name: "
name = gets.chomp

p "Client email: "
email = gets.chomp

p "What is the current status of the client: Prospective, Active, or Past?"
status = gets.chomp

p "Is the client eligible for the friends and family discount? (Y/N?)"
discount = gets.chomp
if discount == "Y"
	discount_bool = true
else
	discount_bool = false
end

p "Project City: "
city = gets.chomp

p "Project State: "
state = gets.chomp

p "Does the client have young children? (Y/N)"
young_children = gets.chomp
if young_children == "Y"
	young_children_bool = true
else
	young_children_bool = false
end

p "What is the design theme of choice: Modern, Minimalist, or Traditional?"
theme = gets.chomp

p "How big is the project space, rounded to the nearest 100 square feet?"
space_sqft = gets.chomp
space_sqft_int = space_sqft.to_i

p "How many rooms are in the project space?"
num_rooms = gets.chomp
num_rooms_int = num_rooms.to_i

design_client = {
	name: name, # Client name
	email: email, # Client email
	status: status, # Client status: "Prospective", "Current", "Past"
	discount: discount_bool, # Whether or not client is eligible for family and friends discount
	city: city, # Project city
	state: state, # Project state
	young_children: young_children_bool, # True if client has young children and design considerations should be made
	theme: theme, # Design theme: "Modern", "Minimalist", "Traditional"
	space_sqft: space_sqft_int, # Total square feet of project, rounded to nearest 100
	num_rooms: num_rooms_int, # Number of rooms in project space
}

puts design_client


# p "You entered the following information: "

# p "Client Name: #{name}"

# p "Client Email: #{email}"

# p "Current Status: #{status}"

# p "Friends and Family Discount: #{discount}"

# p "Project City: #{city}"

# p "Project State: #{state}"

# p "Young Children: #{young_children}"

# p "Design Theme: #{theme}"

# p "Project Space (sqft): #{space_sqft}"

# p "Number of rooms in Project Space: #{num_rooms}"
