# OPERATION KITTEN EPLOSION!

# require gems (pre-written ruby)
require 'sqlite3'
require 'faker' #gem that allows the production of fake data

# create SQLite database
# need ruby equivalent of "sqlite3 [somedatabase.db]"

db = SQLite3::Database.new('kittens.db')

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
