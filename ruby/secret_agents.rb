# advance every letter of a string one letter forward.
# "abc" becomes "bcd"

# declare password
password = "hello"
#ifmmp

password = "hello"
#ifmmp

def encrypt (password)
  index = 0
  while index < password.length
    #append to encrypted_password, one letter at a time, the advanced letter.
    password[index] = password[index].next
    index += 1
  end
  p password
end

encrypt(password)

#define decrypt

def decrypt (password)
	alphabet = "abcdefghijklmnopqrstuvwxyz"
	alphabet_index = 0
	password_index = 0
	while password_index < password.length
		puts "alphabet[alphabet_index]: #{alphabet[alphabet_index]}"
		puts "password[password_index]: #{password[password_index]}"
	# if the letter in the password matches the letter in the alphabet, we should assign it the letter before.
		if alphabet[alphabet_index] == password[password_index]
			puts "alphabet[alphabet_index]: #{alphabet[alphabet_index - 1]}"
			password[password_index] = alphabet[(alphabet_index - 1)]
			password_index += 1
		elsif alphabet[alphabet_index] != password[password_index]
			alphabet_index += 1
		end
		alphabet_index = 0
	end
	p password
end

decrypt (password)

# get the first character of the password string
# find the index position in the alphabet
# assign the chracter its index position in the alphabet -1

# reverse the encrypt method
