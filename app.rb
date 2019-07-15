require_relative 'config/environment'

class App < Sinatra::Base

  set :views, "views"
  # This is a sample static route.
  get '/hello' do
    "Hello World!"
  end

  # This is a sample dynamic route.
  get "/hello/:name" do
    @user_name = params[:name]
    "Hello #{@user_name}!"

  end

  # Code your final two routes here:
  get "/goodbye/:name" do
    @user_name = params[:name]
    # "Goodbye, #{@user_name}."
    erb :goodbye
  end

  get "/multiply/:num1/:num2" do
    @num1 = params[:num1]
    @num2 = params[:num2]
    # binding.pry
    # params[:num1].to_i * params[:num2].to_i 
    # "#{@result}"
    erb :multiple
  end

end