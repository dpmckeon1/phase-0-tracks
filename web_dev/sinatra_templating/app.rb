# require gems
require 'sinatra'
require 'sqlite3'

set :public_folder, File.dirname(__FILE__) + '/static'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# show students on the home page
get '/' do
  @students = db.execute("SELECT * FROM students")
  erb :home
end

get '/students/new' do
  erb :new_student
end

get '/students/findbyid' do
	check_id = params[:id]
	if check_id
		@student_id = db.execute("SELECT * FROM students WHERE id=?", [params['id']])
		"Name: #{@student_id[0]['name']}<br>
		Age: #{@student_id[0]['age']}<br>"
	else
		erb :student_id
	end
end

get '/students/findbyid/:id' do
	@student_id = db.execute("SELECT * FROM students WHERE id=?", [params['id']])
	"Name: #{@student_id[0]['name']}<br>
	Age: #{@student_id[0]['age']}<br>"
end

# create new students via
# a form
post '/students' do
  db.execute("INSERT INTO students (name, campus, age) VALUES (?,?,?)", [params['name'], params['campus'], params['age'].to_i])
  redirect '/'
end

# add static resources