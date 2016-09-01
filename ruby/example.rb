letters = ["a", "b", "c", "d", "e"]

puts "Original data:"
p letters

#iterate through the array with .map
letters.map! do |letter|
  puts letter
  letter.next
end

puts "After .map call:"
p letters
