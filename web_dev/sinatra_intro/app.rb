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


get '/contact' do
  "123 Fake Street, Everywhere, USA"
end

get '/great_job' do
  name = params[:name]
  greeting = "Good job"
  greeting += name ? ", #{name}!" : "!"
  # if name 
  #   "Good job, #{name}!"
  # else
  #   "Good job!"
  # end
end

get '/add_numbers/:num1/:num2' do
  num1 = params[:num1].to_i
  num2 = params[:num2].to_i
  "#{num1 + num2}"
end

get '/find_by_age/:min_age/:max_age' do
  min_age = params[:min_age].to_i
  max_age = params[:max_age].to_i

  students = db.execute("SELECT * FROM students WHERE age >= ? AND age <= ? ORDER BY age ASC ", min_age, max_age)
  table_html_str = 
  "<table>
    <tr>
      <th>Name</th>
      <th>Campus</th>
      <th>Age</th>
    </tr>"

  students.each do |student|
    table_html_str += "<tr>
      <td>#{student['name']}</td>
      <td>#{student['campus']}</td>
      <td>#{student['age']}</td>
    </tr>"
  end

  table_html_str += "</table>"
end



