class Puppy

  def intialize
    "Initializing new puppy instance..."
  end

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(times)
    times.times do
      puts "Woof!"
    end
  end

  def roll_over
    puts "*rolls over*"
  end

  def dog_years(human_years)
    dog_years = human_years * 7
    p dog_years
    dog_years
  end

  def wag_tail
    puts "*shakes hand*"
  end

end

class Cat

  def initialize
    "Producing a Kitten..."
  end

  def purr(times)
    times.times do
      puts "Purrrrrrr"
    end
  end

  def chase(object)
    puts "*chases #{object}*"
  end

end

fido = Puppy.new
fido.fetch("ball")
fido.speak(5)
fido.roll_over
fido.dog_years(4)
fido.wag_tail

kitty_array = []

50.times do

  kitty_array << Cat.new

end

kitty_array.each do |cat_instance|

  cat_instance.purr(2)
  cat_instance.chase("mouse")

end
