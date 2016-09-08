class Puppy

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

end

fido = Puppy.new
fido.fetch("ball")
fido.speak(5)
fido.roll_over
fido.dog_years(4)
