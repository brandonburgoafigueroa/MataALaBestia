require './lib/Cueva.rb'

describe Cueva do
    before (:each) do
        @cueva=Cueva.new
    end
    it "Si escribo true en la puerta norte y verifico si la puerta norte esta disponible deberia devolver true" do
        @cueva.ShowDoorNorth(true)
        expect(@cueva.IsAvaiableDoorNorth).to eq true
    end
    it "Si escribo true en la puerta sud y verifico si la puerta sud esta disponible deberia devolver true" do
        @cueva.ShowDoorSouth(true)
        expect(@cueva.IsAvaiableDoorSouth).to eq true
    end
    it "Si escribo true en la puerta este y verifico si la puerta este esta disponible deberia devolver true" do
        @cueva.ShowDoorEast(true)
        expect(@cueva.IsAvaiableDoorEast).to eq true
    end
    it "Si escribo true en la puerta oeste y verifico si la puerta oeste esta disponible deberia devolver true" do
        @cueva.ShowDoorWest(true)
        expect(@cueva.IsAvaiableDoorWest).to eq true
    end
end