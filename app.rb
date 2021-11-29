require "sinatra"
require "sinatra/reloader"

get '/' do
  "Hello World"
end

get '/secret/' do
  "Lalalala"
end

get '/myname' do
  "<b><i>Kim</i></b>"
end

get '/cat/' do
  @names = ["Amigo", "Misty", "Almond", "Kim"].sample
  erb(:index)
end