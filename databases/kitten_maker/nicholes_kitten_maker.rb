# OPERATION KITTEN EPLOSION!

# require gems (pre-written ruby)
require "sqlite3"
require "faker" #gem that allows the production of fake data

# create SQLite database
# need ruby equivalent of "sqlite3 [somedatabase.db]"

db = SQLite3::Database.new("kittens.db")
# make this db a hash
db.results_as_hash = true;

# string delimiters; this is called a heredoc?
create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS kittens (
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    age INT
  )
SQL

# create kittens table
db.execute(create_table_cmd)

def create_kitten(db,name,age)
  db.execute("INSERT INTO kittens (name, age) VALUES (?, ?)", [name, age])
end

1000.times do
  create_kitten(db, Faker::Name.name, 0)
end

# Add lots of kittens
# add a test kitten
# db.execute("INSERT INTO kittens (name, age) VALUES ("Bob", 10)")

kittens = db.execute("SELECT * FROM kittens")
kittens.each do |kitten|
  puts "#{kitten['name']} is #{kitten['age']}!"
end
