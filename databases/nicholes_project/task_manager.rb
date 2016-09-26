require 'sqlite3'
require 'faker'

db = SQLite3::Database.new("videogames.db")
db.results_as_hash = true

# create strings

create_console_table = <<-SQL
  CREATE TABLE IF NOT EXISTS consoles(
    console_id INTEGER PRIMARY KEY,
    console_name VARCHAR(255)
  );
  INSERT INTO consoles (console_name) VALUES ("Wii");
  INSERT INTO consoles (console_name) VALUES ("PS3");
  INSERT INTO consoles (console_name) VALUES ("PS4");
  INSERT INTO consoles (console_name) VALUES ("N64");
SQL

create_game_table = <<-SQL
  CREATE TABLE IF NOT EXISTS games(
    game_id INTEGER PRIMARY KEY,
    game_name VARCHAR(255),
    game_hours VARCHAR(255),
    review_id VARCHAR (255),
    FOREIGN KEY (review_id) REFERENCES game_review(review_id)
  )
SQL

create_review_table = <<-SQL
  CREATE TABLE IF NOT EXISTS reviews(
    review_id INTGGER PRIMARY KEY,
    stars VARCHAR(255),
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

def assign_console_id(console)

  if console == "PS3"
    console_id = 2
  elsif console == "PS4"
    console_id = 3
  elsif console == "Wii"
    console_id = 1
  elsif console == "N64"
    console_id = 4
  end

  return console_id

end

def populate_database(db, game, console, hours, review_comment, stars)
  db.execute("INSERT INTO games (game_name, game_hours) VALUES (?,?)", [game, hours])

  console_id = assign_console_id(console)
  game_ref = db.execute("SELECT max(game_id) FROM games")

  game_id = game_ref[0][0]

  db.execute("INSERT INTO reviews (stars, comment, console_id, game_id) VALUES (?,?,?,?)", [stars, review_comment, console_id, game_id])
end

def review_game(db)

  puts "What game would you like to review?"
  game = gets.chomp
  puts "What console is it on?"
  console = gets.chomp
  puts "How long is it in hours?"
  hours = gets.chomp
  # p hours.class
  puts "Thanks. And what do you have to say about it?"
  review_comment = gets.chomp
  puts "How many stars would you give it out of 5?"
  stars = gets.chomp
  puts "Thanks a lot! We've documented your review for #{game}."

  populate_database(db, game, console, hours, review_comment, stars)

end

def fetch_review(db)
  puts "For which game would you like to check a review for?"
  game_name = gets.chomp
# will need to join the game and the review table then print the info.
  review = db.execute("SELECT game_name, game_hours FROM games JOIN")

end

 review_game(db)

# p assign_console_id("Wii")
