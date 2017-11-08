require './lib/Game.rb'

describe Game do
    before (:each) do
       @game=Game.new
    end

    it "Si el personaje se movio a la posicion 0,1(cueva 2) deberia mostrar Estas en la cueva Nº 2" do
        @game.StartDefault()
        @game.MovePerson("sud")
        expect(@game.ShowActualNumberOfCave()).to eq 2
    end
    it "Si el personaje se movio a la posicion 0,1(cueva 2) y encontro 3 flechas deberia tener 3 flechas en su inventario" do
        @game.StartDefault()
        @game.MovePerson("sud")
        expect(@game.QuantityArrows()).to eq 3
    end
    it "Si cargo el mapa por defecto y hay una cueva en la posicion 0,1 y verifico si existe una cueva en esa posicion deberia devolver true" do
        @game.StartDefault()
        expect(@game.ThisPositionHasCave(0, 1)).to eq true
    end
end
