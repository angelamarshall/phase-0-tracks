# TRAVEL LOG
# An easy way to capture memories without the threat of losing your fav travel moments

# require gems
require 'sqlite3'
require 'faker'

# create SQLite3 database
db = SQLite3::Database.new("travel_notes.db")
db.results_as_hash = true

create_table = <<-SQL
  CREATE TABLE IF NOT EXISTS travel_notes(
    id INTEGER PRIMARY KEY,
    tripdate DATE,
    location VARCHAR(255),
    comment VARCHAR(255)
  )
SQL

db.execute(create_table)

def travel_input(db, tripdate, location, comment)
  db.execute("INSERT INTO travel_notes (tripdate, location, comment) VALUES (?, ?, ?)", [tripdate, location, comment])
end

100.times do
  travel_input(db, '2010-10-10', Faker::Address.city, Faker::Lorem.paragraph)
end

# db.execute("INSERT INTO travel_notes (tripdate, location, comment) VALUES (10/20/2017, 'Mendoza', 'It was so great. Beautiful scenery.')")
