require 'sinatra'
require './lib/Game.rb'

$game=Game.new
$game.StartDefault()
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
    $game.MovePerson("sud")
    $game.MoveMonster()
    erb :Juego
end

get '/AlNorte' do
    erb :Juego
end

post '/AlNorte' do
    $game.MovePerson("norte")
    $game.MoveMonster()
    erb :Juego
end

get '/AlEste' do
    erb :Juego
end

post '/AlEste' do
    $game.MovePerson("este")
    $game.MoveMonster()
    erb :Juego
end

get '/AlOeste' do
    erb :Juego
end

post '/AlOeste' do
    $game.MovePerson("oeste")
    $game.MoveMonster()
    erb :Juego
end