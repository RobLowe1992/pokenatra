require "sinatra"
require "sinatra/reloader"
require "active_record"
require "pg"
require "pry"

require_relative "db/connection"
require_relative "models/pokemon"
# Read all pokemon
get '/' do
    @pokemon = Pokemon.all
    erb :'pokemon/index'
end

#-----Routes-----

# Form for Creating
get '/new' do
    erb :'pokemon/new'
end
# Create new pokemon
post '/' do
    @pokemon = Pokemon.create(params[:pokemon])
    redirect "/#{@pokemon.id}"
end

# Personal Pokemon page
get '/:id' do
    @pokemon = Pokemon.find(params[:id])
    erb :'pokemon/show'
end

# Form to edit pokemon
get '/:id/edit' do
    @pokemon = Pokemon.find(params[:id])
    erb :'pokemon/edit'
end

# Edit pokemon
put '/:id' do
    @pokemon = Pokemon.find(params[:id])
    @pokemon.update(params[:pokemon])
    redirect "/#{@pokemon.id}"
end

# Destroy pokemon from database
delete '/:id' do
    @pokemon = Pokemon.find(params[:id])
    @pokemon.destroy
    redirect '/'
end