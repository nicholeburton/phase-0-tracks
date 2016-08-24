# Set up variables for use during session

wolves_like_sunshine = TRUE
wolves_like_garlic= TRUE
vampires_like_sunshine = FALSE
vampires_like_garlic = FALSE

#DEFINE APPROPRIATE METHODS

# Method to take "y" and "n" and turn into booleans
def convert_to_boolean(variable)
	if variable == "y"
		variable = TRUE
	elsif variable == "n"
		variable = FALSE
	end
end

# method to check age accuracy
# NOTE: this breaks if the age and birth_year are not exclusively integers in strings.
def check_age_accuracy(age_to_check, year_to_check)
	# calculate birth year based on age
	calculated_year = 2016 - age_to_check

	# if the claimed year matches the calculated year, the person was not lying. If it does not match, we will assume they were lying.
	if calculated_year == year_to_check
		telling_the_truth = true
	elsif calculated_year != year_to_check
		telling_the_truth = false
	end
end

def process_employees (amount)
	until amount == 0
		puts "Employee #{amount}, processing now."

		puts "What is your name?"
		name = gets.chomp

		puts "How old are you? (int)"
		age = (gets.chomp).to_i

		puts "What year were you born? (int)"
		birth_year = (gets.chomp).to_i

		puts "Our company cafeteria serves garlic bread. Should we order some for you? (y/n)"
		garlic_bread = gets.chomp

		puts "Would you like to enroll in the company's health insurance? (y/n)"
		insurance = gets.chomp

		#convert values of garlic_bread and insurance into booleans
		garlic_bread = convert_to_boolean(garlic_bread)
		insurance = convert_to_boolean(insurance)

		# check the age and assign to variable for the following logic checks, for simplicity.
		verified_age = check_age_accuracy(age, birth_year)

		# Even if the employee is an amazing liar otherwise, anyone going by the name of “Drake Cula” or “Tu Fang” is clearly a vampire, because come on. In that case, you should print “Definitely a vampire.”
		if ((name == "Drake Cula") || (name == "Tu Fang"))
		puts "Definetly a vampire."
		# If the employee got their age right, and is willing to eat garlic bread or sign up for insurance, the result is “Probably not a vampire.”
		elsif verified_age && (garlic_bread || insurance)
			puts "Probably not a vampire."
		# If the employee got their age wrong, and hates garlic bread or waives insurance, the result is “Probably a vampire.”
		elsif !verified_age && (!garlic_bread || !insurance)
			puts "Probably a vampire."
		# If the employee got their age wrong, hates garlic bread, and doesn’t want insurance, the result is “Almost certainly a vampire.”
		elsif !verified_age && !garlic_bread && !insurance
		puts "Almost certainly a vampire."

		else
			"results inconclusive."
		end
		puts "Employee #{amount} processed."
		amount = amount - 1
	end
	puts "All employees have been processed. Thank you for using the WIB 2.0. Good day."
end

#PROCESS EMPLOYEES

puts "How many employees are you processing today? (int)"
number_processing = (gets.chomp).to_i

process_employees(number_processing)
