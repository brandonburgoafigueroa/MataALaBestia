class Cave
   
    def initialize
        @DoorNorth=false
        @DoorSouth=false
        @DoorEast=false
        @DoorWest=false
        @Person=nil
        @Arrows=0
        @Monster=nil
        @NumberOfCave=0
    end
    def ShowDoorNorth(option)
        @DoorNorth=option
    end
    def IsAvaiableDoorNorth
        return @DoorNorth
    end
    def ShowDoorSouth(option)
        @DoorSouth=option
    end
    def IsAvaiableDoorSouth
        return @DoorSouth
    end
    def ShowDoorEast(option)
        @DoorEast=option
    end
    def IsAvaiableDoorEast
        return @DoorEast
    end
    def ShowDoorWest(option)
        @DoorWest=option
    end
    def IsAvaiableDoorWest
        return @DoorWest
    end
    def AddArrow(quantity)
        @Arrows=@Arrows+quantity
        return quantity.to_s+" Flechas añadidas"
    end
    def AddMonster(monster)
        @Monster=monster
        return "Monstruo agregado"
    end
    def AddNumberOfCave(number)
        @NumberOfCave=number
        return "Esta es la cueva #"+@NumberOfCave.to_s
    end
end