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
	print_list(groceries)
	groceries
end

# Method to add an item to a list
# input: list (Hash), item name (string), and optional quantity (integer)
# output: updated list (Hash)
# steps: 
	# 1) Use the item name as a new key and quantity as new value and push those two elements into Hash
	# 2) Return the Hash

def add_item(groceries, new_item, quantity)
	groceries[new_item] = quantity
end

# Method to remove an item from the list
# input: list (Hash), item to remove (string)
# output: update list (Hash)
# steps:
	# 1) Take the item name, see if it exists in the hash
	# 2) Delete item
	# 3) Return updated hash

def delete_item(groceries, item)
	if groceries.include?(item)
		groceries.delete(item)
	end
	groceries
end

# Method to update the quantity of an item
# input: list (Hash), item to update(string), quantity to update(int)
# output: Updated hash
# steps:
	# 1) Take item name, see if it exists in hash
	# 2) Update qty if it does exists
	# 3) Return update hash

def update_quantity(groceries, item, quantity)
	if groceries.include?(item)
		groceries[item] = quantity
	end
	groceries
end

# Method to print a list and make it look pretty
# input: List (hash)
# output: nil
# steps: 
	# 1) Pass in grocery list hash
	# 2) Print each key value pair to console

def print_list(grocery_list)
	grocery_list.each{ |item, quantity| puts "#{quantity} #{item}s"}
end


my_groceries = create_list("apple banana pear")

add_item(my_groceries, "kiwi", 3)

delete_item(my_groceries, "apples")

update_quantity(my_groceries, "kiwi", 6)

print_list(my_groceries)
