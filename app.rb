require "sinatra"
require "sinatra/reloader"
require "active_record"
require "pg"
require "pry"

require_relative "db/connection"
require_relative "models/pokemon"

get '/' do
    @pokemon = Pokemon.all
    erb :index
end

get '/addNew' do
    erb :addNew
end

post '/' do
    @pokemon = Pokemon.create(name: params[:name], cp: params[:cp], poke_type: params[:poke_type], img_url: params[:img])
    redirect '/'
end