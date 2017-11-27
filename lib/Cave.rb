class Cave
    
     def initialize
         @DoorNorth=false
         @DoorSouth=false
         @DoorEast=false
         @DoorWest=false
         @NumberOfCave=0
         @Arrows=0
         @Sprays=0
         
     end
     def DoorsAvaiable(north, south, east, west)
         ShowDoorNorth(north)
         ShowDoorSouth(south)
         ShowDoorEast(east)
         ShowDoorWest(west)
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
     def AddSpray(quantity)
        @Sprays=@Sprays+quantity
        return quantity.to_s+" Sprays añadidas"
    end
     def AddNumberOfCave(number)
         @NumberOfCave=number
     end
     def GetNumber
         return @NumberOfCave
     end
     def PickUpArrows()
        quantity=@Arrows
        @Arrows=0
        return quantity
     end
     def PickUpSprays()
        quantity=@Sprays
        @Sprays=0
        return quantity
     end
     
 end