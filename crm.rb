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


get '/contacts/new' do
  erb :new
end

get '/contacts/:id' do
  # instructions for how to handle requests to this route will go here
  # params[:id] contains the id from the URL
  @contact = Contact.find(params[:id].to_i)

  # returns a 404 Not Found response status code if we can't find what the user is asking for
  if @contact
    erb :show_contact
  else
    raise Sinatra::NotFound
  end

end

post '/contacts' do
  Contact.create(
    first_name: params[:first_name],
    last_name:  params[:last_name],
    email:      params[:email],
    note:       params[:note]
  )
  redirect to('/contacts')
end

get '/contacts/:id/edit' do
  @contact = Contact.find_by(id: params[:id].to_i)
  if @contact
    erb :edit_contact
  else
    raise Sinatra::NotFound
  end
end

after do
  ActiveRecord::Base.connection.close
end
