# module Shout
#
#   def self.yell_angrily(words)
#     words + "!!!" + " :("
#   end
#
#   def self.yell_happily(words)
#     words + "!!!" + " :)"
#   end
#
# end
#
# angry = Shout.yell_angrily("I don't like you.")
# happy = Shout.yell_happily("I'm on top of the woooooorld!")
#
# puts "Angry: #{angry}"
# puts "Happy: #{happy}"

module Shout

  def yell_angrily(words)
    puts "#{words}!!! :("
  end

  def yell_happily(words)
    puts "#{words}!!! :)"
  end

end

class Trump
  include Shout
end

class Spongebob
  include Shout
end

trump = Trump.new
spongebob = Spongebob.new

trump.yell_angrily("My hairpiece is the greatest of all time")
trump.yell_happily("I like to suck my thumb")

spongebob.yell_happily("Oh Patrick")
spongebob.yell_angrily("Oh Patrick")
