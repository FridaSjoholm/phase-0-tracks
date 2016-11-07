#WELCOME! This is a program that helps planning your holiday shopping, the same way I normally 
#do my planning. By adding people and budget to one list, ideas of gift and prices in another 
#list and finally one shoppinglist paring people with ideas, looking at price and budget. 
#I can the mark them as bought and keep charge of my christmas shopping. 
#The program uses ruby and databases(SQLite3).

require 'sqlite3'
require 'faker'

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

#Methods to use database
def create_person(db, name, budget)
	db.execute("INSERT INTO people(name, budget) VALUES (?,?)", [name, budget])
end

def create_idea(db, thing, price)
	db.execute("INSERT INTO ideas(thing, price) VALUES (?, ?)", [thing, price])
end

def delete_idea(db, thing)
	db.execute("DELETE FROM ideas WHERE thing= (?)", [thing])
end

def delete_person(db, name)
	db.execute("DELETE FROM people WHERE name= (?)", [name])
end

def print_people(db)
	output = db.execute("SELECT id, name, budget FROM people")
	output.each do |arr|
		puts "ID: #{arr[0]}, PERSOM: #{arr[1]}, BUDGET: #{arr[2]}"
	end
end

def print_ideas(db)
	output = db.execute("SELECT id, thing, price FROM ideas")
	output.each do |arr|
		puts "ID: #{arr[0]}, THING: #{arr[1]}, PRICE: #{arr[2]}"
	end
end

def insert_thing_to_shoplist(db, name_id, thing_id)
	db.execute("INSERT INTO shoplist(bought, people_id, ideas_id) VALUES (?, ? , ?)", ["false" , name_id, thing_id])
end

def bought_something(db, thing)
	db.execute('UPDATE shoplist SET bought = "true" WHERE id = (?)'	, [thing])
end

def print_shoplist(db)
	output = db.execute("SELECT shoplist.id, people.name, people.budget, ideas.thing, ideas.price, shoplist.bought FROM shoplist JOIN people ON shoplist.people_id = people.id JOIN ideas ON ideas_id = ideas.id")
	output.each do |arr|
		puts "ID: #{arr[0]}, NAME: #{arr[1]}, BUDGET: #{arr[2]} THING: #{arr[3]}, PRICE: #{arr[4]}, BOUGHT: #{arr[5]}"
	end
end

def delete_item_shoplist(db, input_id)
	db.execute("DELETE FROM shoplist WHERE id = (?)", [input_id])
end

#PROGRAM:
db = SQLite3::Database.new("gift_planning.db")
db.execute(create_table_people)
db.execute(create_table_ideas)
db.execute(create_table_shoplist)

puts "Hi! I am gonna help you with your christmas shopping"  

while true
	puts "What do you want me to help you with?"
	puts "1- Look at list of people"
	puts "2 - Add new person" 
	puts "3 - Delete person"
	puts "4 - Look at list of ideas"
	puts "5 - Add ideas"
	puts "6 - Delete ideas" 
	puts "7 - Look at shoppinglist"
	puts "8 - Add pairing of person & idea to shoplist"
	puts "9 - Update if bought item"
	puts "10 - Delete item from Shoplist"
	puts "11 - Exit program" 

	input = gets.chomp.to_i

	if input == 1
		print_people(db)
	elsif input == 2
		puts "please give a name"
		name = gets.chomp
		puts "please give a budget"
		budget = gets.chomp
		create_person(db, name, budget)
	elsif input == 3
		puts "Who would you like to delete?"
		name = gets.chomp
		delete_person(db, name)
	elsif input == 4  
		print_ideas(db)
	elsif input == 5
		puts "please type yout idea"
		idea = gets.chomp
		puts "please type the price of the item"
		price = gets.chomp
		create_idea(db, idea, price)
	elsif input == 6
		puts "What idea would you like to delete?"
		thing = gets.chomp
		delete_idea(db, thing)
	elsif input == 7
		print_shoplist(db)
	elsif input == 8
		puts "These are the people in your list"
		print_people(db)
		puts "Give the id of person you want to pair with an idea?"
		person = gets.chomp
		print_ideas(db)
		puts "Give the id of thing"
		thing = gets.chomp
		insert_thing_to_shoplist(db, person, thing)
	elsif input == 9
		puts "Give the id of what on the shoplist you bought"
		id = gets.chomp
		bought_something(db, id)
	elsif input == 10
		puts "Give id of shoplist pairng to delete"
		id = gets.chomp.to_i
		delete_item_shoplist(db, id)
	elsif input == 11 
		puts "Bye bye friend!"
		break
	else
		puts "Your input was incorrect, please try again"
	end
end
