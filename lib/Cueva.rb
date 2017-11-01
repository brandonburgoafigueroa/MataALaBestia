class Cueva
    def initialize
        @DoorNorth=false
        @DoorSouth=false
    end
    def ShowDoorNorth(boolean)
        @DoorNorth=true
    end
    def IsAvaiableDoorNorth
        return @DoorNorth
    end
    def ShowDoorSouth(boolean)
        @DoorSouth=true
    end
    def IsAvaiableDoorSouth
        return @DoorSouth
    end
    def ShowDoorEast(boolean)
        @DoorEast=true
    end
    def IsAvaiableDoorEast
        return @DoorEast
    end
end