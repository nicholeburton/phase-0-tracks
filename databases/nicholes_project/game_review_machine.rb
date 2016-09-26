require 'sqlite3'

db = SQLite3::Database.new("videogames.db")
db.results_as_hash = true

# create strings

create_console_table = <<-SQL
  CREATE TABLE IF NOT EXISTS consoles(
    console_id INTEGER PRIMARY KEY,
    console_name VARCHAR(255)
  )
SQL

populate_console_table = <<-SQL
  INSERT INTO consoles (console_name) VALUES ("Wii"), ("PS3"), ("PS4"), ("N64");
SQL

create_game_table = <<-SQL
  CREATE TABLE IF NOT EXISTS games(
    game_id INTEGER PRIMARY KEY,
    game_name VARCHAR(255),
    game_hours VARCHAR(255),
    review_id INT,
    console_id INT,
    FOREIGN KEY (review_id) REFERENCES reviews(review_id)
    FOREIGN KEY (console_id) REFERENCES consoles(console_id)
  )
SQL

create_review_table = <<-SQL
  CREATE TABLE IF NOT EXISTS reviews(
    review_id INTEGER PRIMARY KEY,
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
db.execute(populate_console_table)
db.execute(create_game_table)
db.execute(create_review_table)

class Game_reviews

    def initialize (db)
      @db = db
    end
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

  def populate_database(game, console, hours, review_comment, stars)

    #fetch game id by pulling the most recently inserted item from games

    console_id = assign_console_id(console)

    game_ref = @db.execute("SELECT max(game_id) FROM games")
    game_id = game_ref[0][0]

    @db.execute("INSERT INTO reviews (stars, comment, console_id, game_id) VALUES (?,?,?,?)", [stars, review_comment, console_id, game_id])

    review_ref = @db.execute("SELECT max(review_id) FROM reviews")
    review_id = review_ref[0][0]

    @db.execute("INSERT INTO games (game_name, game_hours, console_id, review_id) VALUES (?,?,?,?)", [game, hours, console_id, review_id])

  end

  def submit_review

    puts "What game would you like to review?"
    game = gets.chomp
    puts "What console is it on?"
    console = gets.chomp
    puts "Thanks. And what do you have to say about it?"
    review_comment = gets.chomp
    puts "How long is it in hours?"
    hours = gets.chomp
    # p hours.class
    puts "How many stars would you give it out of 5?"
    stars = gets.chomp
    puts "Thanks a lot! We've documented your review for #{game}."

    populate_database(game, console, hours, review_comment, stars)

  end

  def fetch_reviews
  #  puts "For which game would you like to check a review for? Say 'all' if you would like to see everything."
  #  game_name = gets.chomp
  # will need to join the game nd the review table then print the info.
    reviewed_games =  @db.execute("SELECT console_name, game_name, game_hours, stars, comment FROM consoles AS c INNER JOIN games AS g ON c.console_id = g.console_id INNER JOIN reviews r ON r.review_id = g.review_id")

    # p reviewed_games
    puts "Here's what you've reviewed so far: "
    puts ""
    reviewed_games.each do |game|
      puts "Review for #{game['game_name']}, a #{game['game_hours']} hour game for the #{game['console_name']}:"
      puts "#{game['stars']} stars; #{game['comment']}"
      puts ""
    end
  end

  def fetch_games
    puts "Here's the gamems you've reviewed:"
    games = @db.execute("SELECT console_name, game_name, game_hours FROM games AS g INNER JOIN consoles AS c where g.console_id = c.console_id")
    games.each do |game|
      puts "#{game['game_name']} for #{game['console_name']}, #{game['game_hours']} hours."
      puts ""
    end
    puts "enter 'print reviews' to see what you had to say about them."
  end

end

my_reviews = Game_reviews.new(db)

user_input = ""
puts "Welcome to the game review data centre. What would you like to do?"

until user_input == 'done'

  puts "'review a game' will let you review a new game."
  puts "'print reviews' will show all of the reviews you've done so far."
  puts "'view games' will show all of the games you've played."
  puts "'done' will quit."
  user_input = gets.chomp

  if user_input == "review a game"
    my_reviews.submit_review
  elsif user_input == "print reviews"
    my_reviews.fetch_reviews
  elsif user_input == "view games"
    my_reviews.fetch_games
  elsif user_input == "done"
    puts "Thanks for playing!"
  else
    puts "Sorry, that's not a command I recognize. Try again."
    puts ""
  end

end
