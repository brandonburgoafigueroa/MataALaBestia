class Cueva
    def initialize
        @DoorNorth=false
    end
    def ShowDoorNorth(boolean)
        @DoorNorth=true
    end
    def IsAvaiableDoorNorth
        return @DoorNorth
    end
end