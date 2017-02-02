# Release 0 Pseudocode

# 1) Create array of integers
# 2) Declare search integer
# 3) Pass array and search integer into method
# 4) Search each item in array and find index where search integer is equal to array element
# 5) Return index where searchh integer == array element or nil if not present

def search_array(array, search_integer)
	index = 0
	while index < array.length
		if array[index] == search_integer
			return index
		end
		index += 1
	end
end

arr = [42, 89, 23, 1]


p search_array(arr, 24)


