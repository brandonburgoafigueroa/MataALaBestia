require './lib/Map.rb'

describe Map do
    before (:each) do
        @map=Map.new
    end
    it "Si añado una cueva en la posicion 0,1 y en esa posicion no hay cueva deberia mostrarme el mensaje Cueva añadida" do
        expect(@map.CreateCave(0, 1)).to eq "Cueva añadida"
    end
    it "Si añado otra cueva en la posicion 0,1 y en esa posicion hay cueva deberia mostrarme el mensaje Ya existe una cueva" do
        @map.CreateCave(0, 1)
        expect(@map.CreateCave(0, 1)).to eq "Ya existe una cueva"
    end
    it "Si añado una cueva en la posicion 0,1 y le asigno el monstruo y no se ha añadido uno antes muestra el mensaje Monstruo agregado" do
        @map.CreateCave(0, 1)
        expect(@map.SetStartMonsterPos(0, 1)).to eq "Monstruo agregado"
    end
    it "Si añado una cueva en la posicion 0,1 y asigno a ella el personaje deberia mostrar Personaje agregado" do
        @map.CreateCave(0, 1)
        expect(@map.SetStartPersonPos(0, 1)).to eq "Personaje agregado"
    end
    it "Si añado una cueva en la posicion 0,1 y asigno 3 flechas deberia mostrarme 3 Flechas añadidas" do
        @map.CreateCave(0, 1)
        expect(@map.AddArrowsToCave(0, 1, 3)).to eq "3 Flechas añadidas"
    end
    it "Si añado una cueva en la posicion 0,1, le asigno 3 flechas y saco las flechas que tiene esa cueva y vuelvo a sacar las flechas deberia devolver 0" do
        @map.CreateCave(0, 1)
        @map.PickUpArrows(0,1)
        expect(@map.PickUpArrows(0, 1)).to eq 0
    end
end