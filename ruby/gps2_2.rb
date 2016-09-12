def create_list(list)

  list_array = list.split
  list_hash = {}

  list_array.each do |item|
    list_hash[item] = 0
  end

  list_hash

end

def add_item(hash,item)
  hash[item] = 0
  p hash
end

def remove_item(hash, item)
  hash.delete("#{item}")
end

def update_quantity(hash, item, amt)
  hash[item] = amt
end

def print_list(hash)
  hash.each do |item, amt|
    puts "#{item}: #{amt}"
  end
end

groceries = create_list("lemonade tomatoes onions icecream")

update_quantity(groceries, "lemonade", 2)
update_quantity(groceries, "tomatoes", 3)
update_quantity(groceries, "onions", 1)
update_quantity(groceries, "icecream", 4)

remove_item(groceries, "lemonade")

update_quantity(groceries, "icecream", 1)

print_list(groceries)
