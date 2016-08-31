# declare hash
form_values = {}

# promt the user for information
#name
puts "What is your name?"
form_values[:name] = gets.chomp

#age
puts "How old are you?"
form_values[:age] = (gets.chomp).to_i

#children
puts "How many children do you have?"
form_values[:children] = (gets.chomp).to_i

#decor theme
puts "What decor theme do you prefer?"
form_values[:decor] = gets.chomp

#allergies
puts "Do you have any allergies? (y/n)"
# convert string to appropraite boolean
allergies = gets.chomp
if allergies == "y"
  form_values[:allergies] = true
elsif allergies == "n"
  form_values[:allergies] = false
end

#print hash
p form_values

#ask for update

#if no update, break

#if update, turn string into symbol

#print hash again
# p form_values
