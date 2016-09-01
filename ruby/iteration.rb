# playing with yield and blocks

def my_method
  puts "Running block..."
  yield(2, "frankie", "is cool")
  puts "Block has been run."
end

my_method {|num, name, fact| puts "num is equal to #{num}, name is #{name} and fact is #{fact}"}

#declaring an array and a hash

miyazaki_films = ["spirited away", "howl's moving castle", "princess mononoke", "the wind also rises"]
user_info = {
  name: "steven universe",
  age: 11,
  residence: "beach city"
}

# use .each on user_info

puts "miyazaki_films before .each: "
p miyazaki_films

miyazaki_films.each do |film|
  puts "I recommend #{film} by Hayao Miyazaki."
end

puts "miyazaki_films after .each: "
p miyazaki_films

# use .each on user_info

puts "user_info before .each: "
p user_info

user_info.each do |question, answer|
  puts "This person's #{question} is #{answer}."
end

puts "user_info after .each: "
p user_info

# use map! on the array

puts "miyazaki_films before .map!: "
p miyazaki_films

miyazaki_films.map! do |film|
  puts "I recommend #{film} by Hayao Miyazaki."
  film.capitalize
end

puts "miyazaki_films after .map!: "
p miyazaki_films

#### RELEASE 2: DOCUMENTATION ####
$num_array = []
$letter_array = []
$my_hash = []
def reset_variables
  $num_array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
  $letter_array = ["a", "b", "c", "d", "e", "f", "g"]

  $my_hash = {
    one: "a",
    two: "b",
    three: "c",
    four: "d"
  }
end

# 1. delete items that meet a certain condition
reset_variables

p $num_array
$num_array.delete_if {|num| num < 5}
p $num_array

p $my_hash
$my_hash.delete_if {|key, value| value == "a"}
p $my_hash

# 2. filter for items that only satisfy a certain condition
reset_variables

p $num_array
$num_array.select! {|num| num.even?}
p $num_array

p $my_hash
$my_hash.select! {|key, value| value > "b"}
p $my_hash

# 3. filters items satisfying a certain condition
reset_variables

p $num_array
$num_array.select! {|num| num.odd?}
p $num_array

p $my_hash
$my_hash.delete_if {|key, value| value == "c"}
p $my_hash

# 4. manipulate until block evaluates to false
reset_variables

p $num_array
$num_array = $num_array.drop_while{|num| num <= 5}
p $num_array

 p $my_hash
 $my_hash = $my_hash.drop_while{|key, value| value < "c"}
 p $my_hash
