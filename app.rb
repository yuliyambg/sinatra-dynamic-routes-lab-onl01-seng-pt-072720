require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

get '/reversename/:name'do
  @name = params[:name]
  erb :reversename
end


end