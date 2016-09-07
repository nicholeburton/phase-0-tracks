class Santa

  def initialize (ethnicity, gender)
    @ethnicity = ethnicity
    @gender = gender
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0
  end

  # def speak
  #   puts "#{@name} says, 'Ho, ho ho! Haaaaaapy holidays!''"
  # end
  #
  # def eat_milk_and_cookies (cookie_type)
  #   puts "#{@name} says, 'That was a good #{cookie_type}!''"
  # end
  #
  # def land(location)
  #   puts "successfully landed in #{location}"
  #   @location = location
  # end
  #
  # def about
  #   puts "Name: #{@name}"
  #   puts "Gender: #{@gender}"
  #   puts "Location: #{@location}"
  # end

end

santas = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]

example_genders.length.times do |i|
  santas << Santa.new(example_genders[i], example_ethnicities[i])
end

p santas
# santa = Santa.new("Molly", "gender non-conforming")
# santa.about
# santa.speak
# santa.eat_milk_and_cookies("Snickerdoodle")
# santa.land("Paris")
# santa.about
