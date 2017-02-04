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

#2 arrays: sorted array and to be sorted array. 
#define method that passes to be sorted array, starting by passing first integer to index zero.

unsorted_array = [3, 1, 5, 2, 4]

def sort(unsorted_array)
    sorted_array = Array.new(unsorted_array.length)
    sorted_array[0] = unsorted_array[0]
    unsorted_index = 1
    while unsorted_index < unsorted_array.length
        sorted_index = 0
        while unsorted_array[unsorted_index] < sorted_array[sorted_index]
        	sorted_array[sorted_index + 1] = sorted_array[sorted_index]
        end
        sorted_index 
        unsorted_index +=1
    end
    return sorted_array
end

sort(unsorted_array)