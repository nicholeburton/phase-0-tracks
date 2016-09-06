# method to determine whether or not a letter is a vowel.

$vowels = "aeiouAEIOU"

def is_vowel(letter)
  if ($vowels.include? letter)
    return true
  else
    return false
  end
end

# turn the human into an awesome spy.
def make_spy(spy_name)
  #split up the spy name into words, reverse the words into array, join them together into string, then break them up as letters in array.
  spy_name = spy_name.split(' ').reverse.join(' ').split('')

  spy_name.map!{|letter|
    # if it's a vowel, advance it to the next vowel.
    if is_vowel(letter)
        letter_index = $vowels.index(letter)
        letter = $vowels[letter_index + 1]
        # if the letter next to a consonant is a vowel, skip to the next one. There are no vowels next to each other so I'm not concerned about that.
    elsif is_vowel(letter.next)
        letter.next.next
        # check for edge cases.
    elsif letter == ' '
        letter = ' '
    elsif letter == 'z'
        letter = "a"
    elsif letter == 'Z'
        letter = 'A'
    else
      # otherwise advance.
        letter.next
    end
  }

  spy_name = spy_name.join('')
end

def gather_spy_names
  # declare hash in which to store values.
  spy_collection = {}
  spy_name = ''

  # Take spy name
  puts "What's the spy name? ('quit' to quit.)"

  #swap first and last name

  until (spy_name) == "quit"
    spy_name = gets.chomp
    if (spy_namme) != "quit"
      spy_collection[:spy_name] = (make_spy(spy_name))
    end
  end

  if spy_collection != {}
    spy_collection.map{ |old_name, new_name|
      puts "#{old_name} is now #{new_name}"
    }
  end
end

gather_spy_names
