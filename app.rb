require 'sinatra'
get '/' do
    erb :PantallaPrincipal
end

get '/Juego' do
    erb :Juego
end
