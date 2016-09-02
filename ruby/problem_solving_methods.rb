def search_array (array, search_number)
  # get length of array
  index = nil
  # use .each block to find the search_number
  if array.include? search_number
    index = 0
    while index < array.length
      if array[index] == search_number
        return index
      else
        index += 1
      end
    end
  end
end

my_array = [42, 89, 23, 1]

p search_array(my_array, 2)
