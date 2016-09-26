require 'sqlite3'
require 'faker'

db = SQLite3::Database.new("videogames.db")
db.results_as_hash = true

# create strings

create_console_table = <<-SQL
  CREATE TABLE IF NOT EXISTS consoles(
    console_id INTEGER PRIMARY KEY,
    console_name VARCHAR(255)
  )
SQL

create_game_table = <<-SQL
  CREATE TABLE IF NOT EXISTS games(
    game_id INTEGER PRIMARY KEY,
    game_name VARCHAR(255),
    game_hours INT,
    review_id VARCHAR (255),
    FOREIGN KEY (review_id) REFERENCES game_review(review_id)
  )
SQL

create_review_table = <<-SQL
  CREATE TABLE IF NOT EXISTS reviews(
    review_id INTGGER PRIMARY KEY,
    stars INT,
    comment VARCHAR(255),
    console_id INT,
    game_id INT,
    FOREIGN KEY (console_id) REFERENCES consoles(console_id),
    FOREIGN KEY (game_id) REFERENCES games(game_id)
  )
SQL


# create tables

db.execute(create_console_table)
db.execute(create_game_table)
db.execute(create_review_table)

# management methods


def review_game(db)
  puts "What game would you like to review?"
  game = gets.chomp
  puts "What console is it on?"
  console = gets.chomp
  puts "How long is it in hours?"
  hours = gets.chomp
  puts "Thanks. And what do you have to say about it?"
  review_comment = gets.chomp
  puts "How many stars would you give it?"
  stars = gets.chomp
  puts "Thanks a lot! We've documented your review."
end
