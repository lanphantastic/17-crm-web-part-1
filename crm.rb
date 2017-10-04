require_relative 'contact'
require 'sinatra'

# Home page
get '/' do
  erb :index
end

get '/contacts' do
  @all_contacts = Contact.all

  erb :contacts
end

get '/about' do
  erb :about
end

get '/contacts/:id' do
  # instructions for how to handle requests to this route will go here
end


after do
  ActiveRecord::Base.connection.close
end
