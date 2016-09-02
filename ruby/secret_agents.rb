# advance every letter of a string one letter forward.
# "abc" becomes "bcd"

# declare password
password = "hello"
#ifmmp
def encrypt (password)
  index = 0
  while index < password.length
    #append to encrypted_password, one letter at a time, the advanced letter
    if password[index] == "z"
    	password[index] = "a"
    	index += 1
    elsif password[index] != "z"
	  password[index] = password[index].next
	  index += 1
    end
  end
  p password
end

encrypt("zed")

#define decrypt

def decrypt (password)
	alphabet = "abcdefghijklmnopqrstuvwxyz"
	alphabet_index = 0
	password_index = 0
	while password_index < password.length
	#	puts "alphabet[alphabet_index]: #{alphabet[alphabet_index]}"
	#	puts "password[password_index]: #{password[password_index]}"
	# if the letter in the password matches the letter in the alphabet, we should assign it the letter before.
#	puts "#{alphabet[8] == password[0]}"
#	puts "Alphabet[8]: #{alphabet[8]}"
#	puts "Password[0]: #{password[0]}"
		if alphabet[alphabet_index] == password[password_index]
		#	puts "inside positive if statement"
			password[password_index] = alphabet[(alphabet_index - 1)]
			password_index += 1
			alphabet_index = 0
		elsif alphabet[alphabet_index] != password[password_index]
		#	puts "inside negative if statement"
			alphabet_index += 1
		end
	end
	p password
end

decrypt ("afe")

# get the first character of the password string
# find the index position in the alphabet
# assign the chracter its index position in the alphabet -1

# reverse the encrypt method
