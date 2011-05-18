require "rubygems"
require "sinatra"

helpers do
  include Rack::Utils
  alias_method :h, :escape_html
end

get "/blog/post/:id" do
  @post_id = params[:id]
  erb :blog_post
end

get "/echo" do
  @default_string = params[:string]
  erb :echo_form
end

post "/echo" do
  string = params[:string]
  string.upcase! if params[:upcase]
  params[:upcase]
  string
end