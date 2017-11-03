require 'sinatra'
require './lib/Game.rb'

$game=Game.new

get '/' do
    erb :PantallaPrincipal
end

post '/' do
    erb :PantallaPrincipal
end

get '/Juego' do
    erb :Juego
end

post '/Juego' do
    erb :Juego
end
