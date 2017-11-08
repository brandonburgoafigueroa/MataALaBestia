require './lib/Map.rb'
class Game
    def initialize
        @map=Map.new
    end
    def StartDefault()
        @map.Default()
        @PosPerson=@map.GetStartPosPerson()
        @PosMonster=@map.GetStartPosMonster()
        @Arrows=0
    end

    def QuantityArrows()
        return @Arrows
    end
    def AddArrows()
        @Arrows=@Arrows+ActualCaveGetArrows()  
    end
    def ActualCaveGetArrows()
        return @map.PickUpArrows(@PosPerson[0], @PosPerson[1])
    end
    def MovePerson(sentido)
        if (sentido=="norte" && AcutalCaveHasNorth())
            @PosPerson[1]=@PosPerson[1]-1
            AddArrows()
        end
        if (sentido=="sud" && AcutalCaveHasSouth())
            @PosPerson[1]=@PosPerson[1]+1
            AddArrows()
        end
        if (sentido=="este" && AcutalCaveHasEast())
            @PosPerson[0]=@PosPerson[0]+1
            AddArrows()
        end
        if (sentido=="oeste" && AcutalCaveHasWest())
            @PosPerson[0]=@PosPerson[0]-1
            AddArrows()
        end
    end
    def ShowActualNumberOfCave
        return @map.GetNumberCaveOfPos(@PosPerson[0], @PosPerson[1])
    end
    def AcutalCaveHasNorth()
        cave=@map.GetCave(@PosPerson[0], @PosPerson[1])
        return cave.IsAvaiableDoorNorth
    end
    def AcutalCaveHasSouth()
        cave=@map.GetCave(@PosPerson[0], @PosPerson[1])
        return cave.IsAvaiableDoorSouth
            
    end
    def AcutalCaveHasEast()
        cave=@map.GetCave(@PosPerson[0], @PosPerson[1])
       return cave.IsAvaiableDoorEast
            
    end
    def AcutalCaveHasWest()
        cave=@map.GetCave(@PosPerson[0], @PosPerson[1])
        return cave.IsAvaiableDoorWest
        
    end
    def GetDoors()
        north=AcutalCaveHasNorth()
        south=AcutalCaveHasSouth()
        east=AcutalCaveHasEast()
        west=AcutalCaveHasWest()
        return [north, south, east, west]
    end
    def IsTheSamePosMonsterAndPerson()
        return @PosMonster==@PosPerson
    end
    def IsNearTheMonster()
        return IsInTheSameColumnAndNear() || IsInTheSameRowAndNear()
            
    end
    def IsInTheSameColumnAndNear()
        return (@PosMonster[0]-1==@PosPerson[0] && @PosMonster[1]==@PosPerson[1] || @PosMonster[0]+1==@PosPerson[0] && @PosMonster[1]==@PosPerson[1])
    end
    def IsInTheSameRowAndNear()
        return (@PosMonster[1]-1==@PosPerson[1] && @PosMonster[0]==@PosPerson[0] || @PosMonster[1]+1==@PosPerson[1] && @PosMonster[0]==@PosPerson[0])  
    end

end  