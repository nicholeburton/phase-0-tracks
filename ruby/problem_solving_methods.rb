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
