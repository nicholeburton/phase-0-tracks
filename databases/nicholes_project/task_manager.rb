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

create_date_table = <<-SQL
  CREATE TABLE IF NOT EXISTS dates(
    date_id INTEGER PRIMARY KEY,
    date DATE
  )
SQL

create_task_list = <<-SQL
  CREATE TABLE IF NOT EXISTS task_list(
    list_item_id INTEGER PRIMARY KEY,
    date_id DATE,
    task_id INT,
    FOREIGN KEY (date_id) REFERENCES dates(date_id),
    FOREIGN KEY (task_id) REFERENCES tasks(task_id)
  )
SQL

# create table
