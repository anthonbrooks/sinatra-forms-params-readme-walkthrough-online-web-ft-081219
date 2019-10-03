require_relative 'config/environment'

class App < Sinatra::Base

  get '/food_form' do
    erb :food_form
  end

  # Add your post route and action below
  post '/food' do
    return params.to_s
    name = params['name']
    favorite_food = params['favorite_food']
    "Hello, my name is #{@name} and my favorite food is #{@favorite_food}."
  end 
end