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


#Method takes integer and returns array.
#Each succeeding index to be the sum of the two preceding indeces. 
#Print out sequence of Fibonacci terms in array form. 
#array[index] = array[index -1] + array[index -2]


def fib(integer)
    arr = [0, 1]
    index = 2
    while index < integer
        arr[index] = arr[index - 1] + arr[index - 2]
        index +=1
    end
    return arr
end
fib_array = fib(100)
puts fib_array

if fib_array[99] == 218922995834555169026
    p "Verified!"
else
    p "Try again, Oscar."
end

# Insertion Sort Pseudocode

# 1)	sort method takes unsorted array as argument
# 2)	declare sorted array to store elements as they are processed
# 3)	store first element (index 0) from unsorted array into sorted array (index 0)
# 4)	use while loop to loop through unsorted array index 1 to n, with n being the length of the array minus 1
# 5)	for each test element of unsorted array, compare to all non-nil values of sorted array, starting with
# 	index 0. 
# 6)	If test element is less than sorted array element at index z, move all elements from indexz to end 
# 	of non-nil values up one index.
# 7) 	Store test element at index z
# 8) 	Else (test element not less than any values present), store at first nil value available in sorted array
# 9) 	Return sorted array

unsorted_array = [3, 1, 5, 2, 4]

def sort(unsorted_array)
    sorted_array = Array.new(unsorted_array.length) # Values all nil by default
    sorted_array[0] = unsorted_array[0]
    unsorted_index = 1
    while unsorted_index < unsorted_array.length
    	test_value = unsorted_array[unsorted_index] # Value of 1 at start
    	puts test_value
        sorted_index = 0


        ## LINE BELOW IS CAUSING TROUBLE!!! Seems like it's not processing once it gets to 5
        while test_value > sorted_array[sorted_index] || sorted_array[sorted_index] == nil
         	sorted_index += 1 # sorted_index should be where the test_value is to be placed in sorted_array
        end

        if sorted_index < unsorted_index
        	# Move elements from sorted_index to end up one spot
        	# First we want to move the last element, then second to last and so on
        	push_index = unsorted_index - 1
        	while push_index > sorted_index
        		sorted_array[push_index] = sorted_array[push_index + 1]
        		push_index -= 1
        	end
        end

        sorted_array[sorted_index] = test_value

        unsorted_index +=1
    end
    return sorted_array
end

sort(unsorted_array)