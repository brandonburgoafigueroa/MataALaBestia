require './lib/Map.rb'

describe Map do
    before (:each) do
        @map=Map.new
    end
    it "Si añado una cueva en la posicion 0,1 y en esa posicion no hay cuevas deberia mostrarme el mensaje Cueva añadida" do
        expect(@map.CreateCave(0, 1)).to eq "Cueva añadida"
    end
end