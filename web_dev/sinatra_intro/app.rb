# require gems
require 'sinatra'
require 'sqlite3'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# write a basic GET route
# add a query parameter
# GET /
get '/' do
  "#{params[:name]} is #{params[:age]} years old."
end

#contact method
get '/contact' do
  "4819 Lore Dr. 
  Clarkston, MI
  483297"
end

#a method for saying great job
get '/great_job' do
  name = params[:name]
  if name
    "Good job, #{name}!"
  else
    "Good job!"
  end
end

#add two numbers and provide result 
get '/addition/:number1/plus/:number2' do
  answer = params[:number1].to_i + params[:number2].to_i
  "#{answer}"
end

# write a GET route with
# route parameters
get '/about/:person' do
  person = params[:person]
  "#{person} is a programmer, and #{person} is learning Sinatra."
end

get '/:person_1/loves/:person_2' do
  "#{params[:person_1]} loves #{params[:person_2]}"
end

# write a GET route that retrieves
# all student data
get '/students' do
  students = db.execute("SELECT * FROM students")
  response = ""
  students.each do |student|
    response << "ID: #{student['id']}<br>"
    response << "Name: #{student['name']}<br>"
    response << "Age: #{student['age']}<br>"
    response << "Campus: #{student['campus']}<br><br>"
  end
  response
end

# write a GET route that retrieves
# a particular student

get '/students/:id' do
  student = db.execute("SELECT * FROM students WHERE id=?", [params[:id]])[0]
  student.to_s
end

# write a method to search for all students from a specific campus

get '/class/:campus' do
  student = db.execute("SELECT * FROM students WHERE campus=?", [params[:campus]])
  student.to_s
end



