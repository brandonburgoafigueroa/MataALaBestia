require './lib/Game.rb'

describe Game do
    before (:each) do
       @game=Game.new
    end
    it "Si el personaje se movio a la posicion 0,1(Ir al sud) y el monstruo esta en la posicion 0,2 deberia mostrar mensaje Siento un olor" do
        @game.MovePerson("Sud")
        expect(@game.FeelSmell).to eq "Siento un olor"
    end
end