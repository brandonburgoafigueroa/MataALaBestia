require './lib/Game.rb'

describe Game do
    before (:each) do
       @game=Game.new
    end

    it "Si el personaje se movio a la posicion 0,1(cueva 2) deberia mostrar Estas en la cueva Nº 2" do
        @game.MovePerson("sud")
        expect(@game.ShowActualNumberOfCave()).to eq 2
    end
    it "Si el personaje se movio a la posicion 0,1(cueva 2) y encontro 3 flechas deberia tener 3 flechas en su inventario" do
        @game.MovePerson("sud")
        expect(@game.QuantityArrows()).to eq 3
    end
end
