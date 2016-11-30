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