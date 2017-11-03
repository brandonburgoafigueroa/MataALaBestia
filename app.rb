require 'sinatra'
require './lib/Game.rb'

$game=Game.new
$caveReference=$game.GetDoors

get '/' do
    erb :PantallaPrincipal
end

post '/' do
    erb :PantallaPrincipal
end

get '/Juego' do
    $caveReference=$game.GetDoors
    erb :Juego
end

post '/Juego' do
    erb :Juego
end

get '/AlSud' do
    $caveReference=$game.GetDoors
    erb :Juego
end

post '/AlSud' do
    $game.MovePerson("Sud")
    $caveReference=$game.GetDoors
    erb :Juego
end

get '/AlNorte' do
    $caveReference=$game.GetDoors
    erb :Juego
end

post '/AlNorte' do
    $game.MovePerson("Norte")
    $caveReference=$game.GetDoors
    erb :Juego
end