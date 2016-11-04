require 'sqlite3'
require 'faker'
#Create databse
db = SQLite3::Database.new("gift_planning.db")

#Create tables
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

create_table_shoplist = <<-SQL
  CREATE TABLE IF NOT EXISTS shoplist(
    id INTEGER PRIMARY KEY,
    bought BOOLEAN,
    people_id,
    ideas_id,
    FOREIGN KEY (people_id) REFERENCES people(id)
    FOREIGN KEY (ideas_id) REFERENCES ideas(id)
  )
SQL


db.execute(create_table_people)
db.execute(create_table_ideas)
db.execute(create_table_shoplist)

#Insert infor into tables
def create_person(db, name, budget)
	db.execute("INSERT INTO people(name, budget) VALUES (?,?)", [name, budget])
end

def create_idea(db, name, thing, price)
	db.execute("INSERT INTO ideas(name, thing, price) VALUES (?,?, ?)", [name, thing, price])
end

# Welcomes user, displays Shoplist with only gifts priced under budget, gives option to user:

#- look at list of people
#- add new person 
#- delete person

#- Look at list of ideas
#- Add ideas
#- delete ideas 

#- display shoplist with only ideas under budget
#- update if bought or not

# -delete database to make room for new holiday.
#- exit program 
puts 
create_person(db, "Louise", 20)
create_person(db, "Elina", 20)

create_idea(db, "Louise", "vase", 18)

