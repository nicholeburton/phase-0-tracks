# collect word (should be used to initialize class)

# count the letters in the word
# populate int var with word length for guess count
# populate a string with underscores

# until the guesses == 0 OR underscores string == word

# take letter from user
# search original word for letters
# if the letter is a duplicate
#    do nothing
# if the letter is found,
#   modifiy the underscore string to reveal that letter
#   return the underscore string
#   reduce count var
# if the letter is not found
#   return the underscore string
#   reduce count var

class Word_Guess_Game

  attr_accessor :word, :word_length, :guesses, :guess_status

  def initialize(word)
    @word = word
    @word_length = word.length
    @guesses_left = word.length

    @guess_status = ""
    @guess_status_smushed = ""

    @word_length.times do |num|
      if num == @word_length - 1
        @guess_status << "_"
      else
        @guess_status << "_ "
      end
    end
  end

  def compare_to_word
    #convert into smaller string
    @guess_status_smushed = ""
    @guess_status.each_char do |char|
      if guess_status.even?
        @guess_status_smushed << char
    end

    #check against original
    @word == @guess_status_smushed
  end

  def my_method
    until ((@guesses_left == 0) || (compare_to_word))
      # take letter from user
      # search original word for letters
      # if the letter is a duplicate
      #    do nothing
      # if the letter is found,
      #   modifiy the underscore string to reveal that letter
      #   return the underscore string
      #   reduce count var
      # if the letter is not found
      #   return the underscore string
      #   reduce count var
      puts "Guess a letter. #{@guesses_left} guesses left."
      user_guess = gets.chomp
      if @word.include? "#{user_guess}"
        
      end
    end
  end

end

my_game = Word_Guess_Game.new("molly")
p my_game.word
p my_game.word_length
p my_game.guesses
p my_game.guess_status
