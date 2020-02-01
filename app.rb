require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get "/reversename/:name" do
    @user_name = params[:name].reverse
    "Hello #{@user_name}!"
  end
  get "/square/:number" do
    @num = params[:number].to_i*params[:number].to_i
    "#{@num}"
  end
  get "/say/:number/:phrase" do
    # @
    # @num = params[:number].to_i
    # "#{@num}"
    @the_product = ""
    @num = params[:number].to_i
    @phr = params[:phrase]
    @num.times do
      @the_product += @phr
      @the_product += "\n"
    end
    "#{@the_product}"

  end
  get "/say/:word1/:word2/:word3/:word4/:word5" do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end
  get "/:operation/:number1/:number2" do
    @number_1 = params[:number1].to_i
    @number_2 = params[:number2].to_i
    if params[:operation] == "add"
      "#{@number_1+@number_2}"
    elsif params[:operation] == "subtract"
      "#{@number_1-@number_2}"
    elsif params[:operation] == "multiply"
      "#{@number_1*@number_2}"
    elsif params[:operation] == "divide"
      "#{@number_1/@number_2}"
    end
  end
  
end