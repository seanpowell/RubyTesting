require "rubygems"
require "sinatra"

get "/" do
  "hello world"
end

get "/about" do
  @number_of = 20
  erb :about
end

get "/contact" do
  erb :contact
end
