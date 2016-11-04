require 'sqlite3'
require 'faker'

db = SQLite3::Database.new("gift_planning.db")

create_table_people = <<-SQL
  CREATE TABLE IF NOT EXISTS people(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    budget INT
  )
SQL

create_table_ideas = <<-SQL
  CREATE TABLE IF NOT EXISTS ideas(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    thing VARCHAR(255),
    price INT
  )
SQL

db.execute(create_table_people)
db.execute(create_table_ideas)

