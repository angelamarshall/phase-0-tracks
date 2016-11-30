def search_array(arr, int)
i = 0
  while i < arr.length
    if arr[i] == int
    return i
    end
    i += 1
  end
end

odd = [5, 15, 30, 350, 55, 105]
even = [4, 20, 46, 80]
nothing = []

p search_array(odd, 55)


# Fibonacci Numbers
def fib(n)
	i = 0
	fib_array = [0,1]
		until fib_array.length
			fib_array << fib_array[i] + fib_array[i + 1]
			i += 1
		end
	return fib_array
end

p fib(100)


#BUBBLE SORT 
	#sorts a collection by moving from left to right
	#compares a value with the next to determine which is higher or lower
	#uses a variable called swapped and it is true if any swaps are made in the pass through the list
	#once the swapped returns false the sorted list is returned 
  
  #Visualizations and numerous articles helped with understanding this concept
  #I felt a little confused when first looking over this algorithm but that's normal for me with any of this material lately

#This method takes the values in a given array and sorts through them, swapping the numbers with others that are higher so the list returns in order from lowest to highest
def bubble_sort(array)
  n = array.length
  loop do
    swapped = false

    (n-1).times do |i|
      if array[i] > array[i+1]
        array[i], array[i+1] = array[i+1], array[i]
        swapped = true
      end
    end

    break if not swapped
  end

  array
end

bubble_sort([1,5,7,2,0,10,4])