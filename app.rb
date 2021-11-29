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

get '/random-cat' do
  @name = ["Amigo", "Misty", "Almond", "Kim"].sample
  erb(:index)
end

get '/named-cat' do
  p params
  @name = params[:name]
  erb(:index)
end