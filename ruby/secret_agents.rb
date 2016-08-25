# advance every letter of a string one letter forward.
# "abc" becomes "bcd"

# declare password
ppassword = "hello"
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

# reverse the encrypt method
