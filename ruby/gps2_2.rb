# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# output: grocery list hash
# steps: 
  # 1) Store argument (string of items) separated into array by dividing it at each space
  # 2) Populate a hash with that that string from array as the key and default value of 1
  # 3) Print hash to console
  # 4) Return hash

def create_list(grocery_items)
	grocery_arr = grocery_items.split(" ")
	groceries = grocery_arr.each_with_object({}) do |item, grocery_hash|
		grocery_hash[item] = 1
	end
	# Replace with prints method once available
	puts groceries
	groceries
end

create_list("apples bananas pears")


# Method to add an item to a list
# input: list, item name, and optional quantity
# steps:
# output:

# Method to remove an item from the list
# input:
# steps:
# output:

# Method to update the quantity of an item
# input:
# steps:
# output:

# Method to print a list and make it look pretty
# input:
# steps:
# output:


