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
    @move=$game.IsInTheSamePosBatAndPerson()
    @weaterwell=$game.IsInTheSamePosWaterWellAndPersonMove()
    erb :Juego
end

get '/AlNorte' do
    erb :Juego
end

post '/AlNorte' do
    $game.MovePerson("norte")
    $game.MoveMonster()
    @move=$game.IsInTheSamePosBatAndPerson()
    @weaterwell=$game.IsInTheSamePosWaterWellAndPersonMove()
    erb :Juego
end

get '/AlEste' do
    erb :Juego
end

post '/AlEste' do
    $game.MovePerson("este")
    $game.MoveMonster()
    @move=$game.IsInTheSamePosBatAndPerson()
    @weaterwell=$game.IsInTheSamePosWaterWellAndPersonMove()
    erb :Juego
end

get '/AlOeste' do
    erb :Juego
end

post '/AlOeste' do
    $game.MovePerson("oeste")
    $game.MoveMonster()
    @move=$game.IsInTheSamePosBatAndPerson()
    @weaterwell=$game.IsInTheSamePosWaterWellAndPersonMove()
    erb :Juego
end

get '/LanzarAlSud' do
    erb :Juego
end

post '/LanzarAlSud' do
    @KillMonster=$game.ThrowArrowToSouth()
    @Trow=$game.HasArrows()
    
    erb :Juego
end
post '/LanzarSprayAlSud' do
    @SleepBat=$game.ThrowSprayToSouth()
    @Trow=$game.HasSprays()
    
    erb :Juego
end

get '/LanzarAlNorte' do
    erb :Juego
end

post '/LanzarAlNorte' do
    @KillMonster=$game.TrowArrowToNorth()
    @Trow=$game.HasArrows()
 
    erb :Juego
end
post '/LanzarSprayAlNorte' do
    @SleepBat=$game.ThrowSprayToNorth()
    @Trow=$game.HasSprays()
    
    erb :Juego
end
get '/LanzarAlEste' do
    erb :Juego
end

post '/LanzarAlEste' do
    @KillMonster=$game.ThrowArrowToEast()
    @Trow=$game.HasArrows()
    
    erb :Juego
end
post '/LanzarSprayAlEste' do
    @SleepBat=$game.ThrowSprayToEast()
    @Trow=$game.HasSprays()
    
    erb :Juego
end

get '/LanzarAlOeste' do
    erb :Juego
end

post '/LanzarAlOeste' do
    @KillMonster=$game.ThrowArrowToWest()
    @Trow=$game.HasArrows()
  
    erb :Juego
end
post '/LanzarSprayAlOeste' do
    @SleepBat=$game.ThrowSprayToWest()
    @Trow=$game.HasSprays()
    
    erb :Juego
end