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

# fib sequence

def fib
  sequence = nil
  puts "What number would you like?"
  user_input = gets.chomp.to_i

  # get user input
  # as long as the user input is not 0
  if user_input != 0
    sequence = [0]
    counter = 1
    while counter < user_input
      if sequence[-1] == 0
        # sequence = [0]
        sequence << 1
        # sequence = [0, 1]
        counter += 1
      else
        sequence << sequence[-1] + sequence[-2]
        counter += 1
      end
    end
    p sequence
  end
end

# Bubble sort

# name method that takes parameter array.
def bubble_sort (array)
  # assign to variable length of array.
  n = array.length
  # loop through method with array
  loop do
    # declare boolean that keeps track of whether or not a given number has been swapped.
    swapped = false
    # start a loop for length of array minus 1 times.
    (n-1).times do |i|
      # if an index is greater than the index next to it...
      if array[i] > array[i+1]
        # ...switch the array index with the one next to it.
        array[i], array[i+1] = array[i+1], array[i]
        # mark our boolean as true.
        swapped = true
      end
    end
  break if not swapped
  end
  array
end
# break if everything has been swapped.
# return the sorted array.
