# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
  # convert string (input) into hash
    # (SPLIT into array, use block to iterate through array
    # insert into hash
    # set default quantity
  # print the list to the console [can you use one of your other methods here?]
# output: hash with key: item, value: quantity for each LI

def create_list (items)
  item_array = []
  item_array = items.split(' ')
  item_hash = {}
  item_array.each do |list_item|
    item_hash[list_item] = 0
  end
end

# create_list("Carrots, Apples, Peaches")

# Method to add an item to a list
# input: item name and optional quantity (string)
# steps: SPLIT string into array ([val1,val2.TO_I])
# use the 0th and 1th values of the array to insert into hash as new item
# output: hash + new item

# assuming item being added is a new item.
def add_item (item, optional_quantity = 0)
  item_hash[item] = optional_quantity
end

# Applies to first applicable item found the hash
# Method to remove an item from the list
# input: string (key; item)
# steps:
  # find the key in the hash
  # remove the key + value from hash
# output: hash - item

def remove_item (item)
    item_hash[item].delete
end

# Method to update the quantity of an item
# input: string (key; item), int (value; + quantity)
# steps:
  # find the key in the hash
  # update value to be value = quantity
# output: hash with updated item quantity

def update_quantity (item, quantity)
  item_hash[item] = quantity
end

# Method to print a list and make it look pretty
# input: hash
# steps:
  # iterate through hash using block
  # PUTS "#{key} : #{value}"
# output: human readable list of key + value pairs

def print_list
  item_hash.each{ |item, quantity|
    puts "#{item}: #{quantity}"
  }
end
