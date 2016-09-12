# class Reindeer
#   def initialize(name)
#     @name = name
#     @location = "The North Pole"
#   end
#
#   def take_off(altitude)
#     puts "#{@name} took off."
#     puts "#{@name} ascended to #{altitude} feet."
#   end
#
#   def land(location)
#     puts "Landed safely in #{location}."
#     @location = location
#   end
#
#   def about
#     puts "Name: #{@name}"
#     puts "Location: #{@location}"
#   end
#
# #getter methods
#
#   def name
#     @name
#   end
#
#   def location
#     @location
#   end
#
# #setter methods
#
#   def name=(new_name)
#     @name = new_name
#   end
#
# end
#
# reindeer = Reindeer.new("Dasher")
# reindeer.take_off(3000)
# reindeer.land(reindeer.location)


##### TESTING #####

# our calculator should ...
# add two integers and return an integer
# subtract two integers and return an integer
# multiply two integers and return an integer

# RSpec
# 'describe' block for each group of tests
#    'it' block for each indiviudual test
#        expect (<YOUR CODE>).to eq <RESULT>
