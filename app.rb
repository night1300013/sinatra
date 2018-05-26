# app.rb
# run with `ruby app.rb`
require "./nancy"

# get "/" do
#   "Hey there!"
# end

get "/" do
  [200, {}, ["Your params are #{params.inspect}"]]
end

get "/hello" do
  "Nancy says hello!"
end

get "/bare-get" do
  "Whoa, it works!"
end

post "/" do
  request.body.read
end

Rack::Handler::WEBrick.run Nancy::Application, Port: 9292
