require './lib/Cave.rb'


describe Cave do
    before (:each) do
        @cave=Cave.new
    end
    it "Si escribo true en la puerta norte y verifico si la puerta norte esta disponible deberia devolver true" do
        @cave.ShowDoorNorth(true)
        expect(@cave.IsAvaiableDoorNorth).to eq true
    end
    it "Si escribo true en la puerta sud y verifico si la puerta sud esta disponible deberia devolver true" do
        @cave.ShowDoorSouth(true)
        expect(@cave.IsAvaiableDoorSouth).to eq true
    end
    it "Si escribo true en la puerta este y verifico si la puerta este esta disponible deberia devolver true" do
        @cave.ShowDoorEast(true)
        expect(@cave.IsAvaiableDoorEast).to eq true
    end
    it "Si escribo true en la puerta oeste y verifico si la puerta oeste esta disponible deberia devolver true" do
        @cave.ShowDoorWest(true)
        expect(@cave.IsAvaiableDoorWest).to eq true
    end
end



