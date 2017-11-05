require './lib/Map.rb'
class Game
    def initialize
        @map=Map.new
        @map.Default()
        @PosPerson=@map.GetStartPosPerson()
        @PosMonster=@map.GetStartPosMonster()
        @Arrows=0
    end
    def QuantityArrows()
        return @Arrows
    end
    def AddArrows(posx, posy)
            @Arrows=@Arrows+ActualCaveGetArrows()            
    end
    def ActualCaveGetArrows()
        return @map.PickUpArrows(@PosPerson[0], @PosPerson[1])
    end
    def MovePerson(sentido)
        if (sentido=="norte" && AcutalCaveHasNorth())
            @PosPerson[1]=@PosPerson[1]-1
            AddArrows(@PosPerson[0], @PosPerson[1])
        end
        if (sentido=="sud" && AcutalCaveHasSouth())
            @PosPerson[1]=@PosPerson[1]+1
            AddArrows(@PosPerson[0], @PosPerson[1])
        end
        if (sentido=="este" && AcutalCaveHasEast())
            @PosPerson[0]=@PosPerson[0]+1
            AddArrows(@PosPerson[0], @PosPerson[1])
        end
        if (sentido=="oeste" && AcutalCaveHasWest())
            @PosPerson[0]=@PosPerson[0]-1
            AddArrows(@PosPerson[0], @PosPerson[1])
        end
    end
    def ShowActualNumberOfCaves
        return @map.GetNumberCaveOfPos(@PosPerson[0], @PosPerson[1])
    end
    def AcutalCaveHasNorth()
        cave=@map.GetCave(@PosPerson[0], @PosPerson[1])
        if (cave.IsAvaiableDoorNorth)
            return true
        else
            return false
        end
    end
    def AcutalCaveHasSouth()
        cave=@map.GetCave(@PosPerson[0], @PosPerson[1])
        if (cave.IsAvaiableDoorSouth)
            return true
        else
            return false
        end
    end
    def AcutalCaveHasEast()
        cave=@map.GetCave(@PosPerson[0], @PosPerson[1])
        if (cave.IsAvaiableDoorEast)
            return true
        else
            return false
        end
    end
    def AcutalCaveHasWest()
        cave=@map.GetCave(@PosPerson[0], @PosPerson[1])
        if (cave.IsAvaiableDoorWest)
            return true
        else
            return false
        end
    end
    def GetDoors()
        north=AcutalCaveHasNorth()
        south=AcutalCaveHasSouth()
        east=AcutalCaveHasEast()
        west=AcutalCaveHasWest()
        return [north, south, east, west]
    end
    def IsTheSamePosMonsterAndPerson()
        if (@PosMonster==@PosPerson)
            return true
        else
            return false
        end
    end
    def IsNearTheMonster()
        if (IsInTheSameColumnAndNear() || IsInTheSameRowAndNear())
            return true
        else
            return false
        end
    end
    def IsInTheSameColumnAndNear()
        if (@PosMonster[0]-1==@PosPerson[0] && @PosMonster[1]==@PosPerson[1] || @PosMonster[0]+1==@PosPerson[0] && @PosMonster[1]==@PosPerson[1])
            true
        else
            false
        end
    end
    def IsInTheSameRowAndNear()
        if (@PosMonster[1]-1==@PosPerson[1] && @PosMonster[0]==@PosPerson[0] || @PosMonster[1]+1==@PosPerson[1] && @PosMonster[0]==@PosPerson[0])
            true
        else
            false
        end
    end

end  