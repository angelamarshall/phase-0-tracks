# TRAVEL LOG
# An easy way to capture memories without the threat of losing your fav travel moments

# require gems
require 'sqlite3'
require 'faker'

# create SQLite3 database
db = SQLite3::Database.new("travel_notes.db")
db.results_as_hash = true

create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS travel_notes(
    id INTEGER PRIMARY KEY,
    tripdate TIMESTAMP,
    location VARCHAR(255),
    comment VARCHAR(255),
    willreturn BOOLEAN
  )
SQL

db.execute(create_table_cmd)

def travel_input(db, date, location, comment, willreturn)
  db.execute("INSERT INTO travel_notes (date, location, comment, willreturn) VALUES (?, ?, ?, ?)", [date, location, comment, willreturn])
end

100.times do
  travel_input(db, Faker::Date.backward(365), Faker::Address.city, Faker::Lorem.paragraph, Faker::Boolean.boolean)
end