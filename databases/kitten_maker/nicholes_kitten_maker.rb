# OPERATION KITTEN EPLOSION!

# require gems (pre-written ruby)
require 'sqlite3'
require 'faker' #gem that allows the production of fake data

# create SQLite database
# need ruby equivalent of "sqlite3 [somedatabase.db]"

db = SQLite3::Database.new('kittens.db')

# string delimiters
