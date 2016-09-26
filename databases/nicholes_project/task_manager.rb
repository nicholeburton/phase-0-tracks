require 'sqlite3'
require 'faker'

db = SQLite3::Database.new("tasks.db")
db.results_as_hash = true

# create strings

create_task_table = <<-SQL
  CREATE TABLE IF NOT EXISTS tasks(
    task_id INTEGER PRIMARY KEY,
    task_name VARCHAR(255),
    completed BOOLEAN
  );
SQL

create_location_table = <<-SQL
  CREATE TABLE IF NOT EXISTS locations(
    location_id INTEGER PRIMARY KEY,
    location VARCHAR(255)
  )
SQL

create_task_list = <<-SQL
  CREATE TABLE IF NOT EXISTS task_list(
    list_item_id INTEGER PRIMARY KEY,
    location_id INT,
    task_id INT,
    FOREIGN KEY (location_id) REFERENCES locations(location_id),
    FOREIGN KEY (task_id) REFERENCES tasks(task_id)
  )
SQL

# create tables

db.execute(create_task_table)
db.execute(create_date_table)
db.execute(create_task_list)

# management methods

def collect_tasks
  input = ""
  tasks = {}
  until input == "done"
    puts "Your task: "
    task = gets.chomp
    puts "Task location: "
    location = gets.chomp
    tasks[task] = location;
  end
  return tasks
end
