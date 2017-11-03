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

get '/AlSud' do
    
    erb :Juego
end

post '/AlSud' do
    $game.MovePerson("Sud")
    erb :Juego
end

get '/AlNorte' do
    
    erb :Juego
end

post '/AlNorte' do
    $game.MovePerson("Norte")
    erb :Juego
end