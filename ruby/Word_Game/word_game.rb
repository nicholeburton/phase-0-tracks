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

# THE KEY TO IT ALL, Y'ALL.
# FRANK
# 01234
# _____
# _ _ _ _ _
# 0 1 2 3 4
# 0 2 4 6 8

# assuming this isn't going to work for words with duplicate letters...

class Word_Guess_Game

  attr_accessor :word, :word_length, :guesses_left, :guess_status, :word_expanded

  def initialize(word)
    @word = word.squeeze
    @word_length = @word.length
    @guesses_left = @word.length

    # guess_status is a set of user-readable underscores and letters. ex. "molly" will become "_ _ _ _ _" / "_ o _ _ _", etc.
    @guess_status = ""
    # guess_status_smushed is @guess_status without the spaces. "_ _ _ _ _" becomes "_____" used for comparison to @word.
    @word_expanded = ""

    @word_length.times do |num|
      if num == @word_length - 1
        @guess_status << "_"
        @word_expanded << "#{@word[num]}"
      else
        @guess_status << "_ "
        @word_expanded << "#{@word[num]} "
      end
    end

  end

  def compare_to_word
    #check against original
    @guess_status == @word_expanded
  end

  def reveal_char(char)
    placement = (@word.index(char)*2)
    @guess_status[placement] = char
  end

  def play_game
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
      if @guess_status.include? "#{user_guess}"
        # do nothing
      elsif @word.include? "#{user_guess}"
          reveal_char(user_guess)
          @guesses_left -= 1
        elsif !@word.include? "#{user_guess}"
          @guesses_left -=1
        end
      p @guess_status
    end

    if @guess_status == @word_expanded
      puts "You won! #{@word} is the correct answer. Good job!"
    else
      puts "You lost! Too bad. Try again."
    end

  end
end

# puts "Player 1, what word woud you like Player 2 to guess? Remember: We're going to squeeze out any duplicate letters in words due to scope creep. Sorry."
# player1_word = gets.chomp
#
# game = Word_Guess_Game.new(player1_word)
# game.play_game

# testing driver code
# my_game = Word_Guess_Game.new("frank")
# puts "#{my_game.word} word"
# puts "#{my_game.word_expanded} Expanded word"
# puts "#{my_game.guess_status} User readable guess status#"
# puts "#{my_game.word_length} Word length"
# puts "#{my_game.guesses_left} Guesses left"
#
# my_game.play_game
