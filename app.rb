require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

get '/reversename/:name'do
  @name = params[:name]
  "#{@name.reverse}"
end

get '/square/:number' do
@number = params[:number].to_i
"#{@number*@number}"
end

get 'say/:number/:phrase' do
@number = params[:number].to_i
@phrase = params[:phrase]
"#{@phrase*@number}"
end


get '/:operation/:number1/:number2' do
@operation = params[:operation]
@number1 = params[:number1].to_i
@number2 = params[:number2].to_i
case @operation
when "add"
"#{@number1 + @number2}"
when "subtract"
"#{@number1 - @number2}"
when "multiply"
"#{@number1 * @number2}"
when "divide"
"#{@number1 / @number2}"
end
end

end