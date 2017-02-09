require 'bundler'
Bundler.require
require_relative 'models/model.rb'
class MyApp < Sinatra::Base

  get '/' do
    erb :index
  end
  
  post '/gemstone' do 
    
    user_month=params[:month]
    @result=choose_gem(user_month)
    @gem1=@result[0]
    @image1=@result[1]
    erb :results
    
  end
  
end