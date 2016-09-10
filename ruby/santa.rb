class Santa

  # attr_reader
  # attr_writer

  # getter and setter methods
  attr_accessor :name, :ethnicity, :gender, :age

  def initialize (name, gender, ethnicity)
    @name = name
    @ethnicity = ethnicity
    @gender = gender
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0
  end

  def celebrate_birthday
    @age += 1
  end

  def get_mad_at(reindeer)
    @reindeer_ranking.delete(reindeer)
    @reindeer_ranking << reindeer
  end

end

santas = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]

100.times do |i|

  santas << Santa.new(example_names.sample, example_genders.sample, example_ethnicities.sample)
  santas[i - 1].age = rand(140)

  puts "Name: #{santas[i - 1].name}"
  puts "Ethnicity: #{santas[i - 1].ethnicity}"
  puts "Gender: #{santas[i - 1].gender}"
  puts "Age: #{santas[i - 1].age}"

end
