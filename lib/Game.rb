require './lib/Map.rb'
class Game
    def initialize
        @map=Map.new
    end
    def StartDefault()
        @map.Default()
        @PosPerson=@map.GetStartPosPerson()
        @PosWaterWell=@map.GetStartPosWeaterWell()
        @PosMonster=@map.GetStartPosMonster()
        @PosBat=@map.GetStartPosBat()
        @Arrows=0
        @Sprays=0
    end
    
    def setPosBat(posX,posY)
        @PosBat[0]=posX
        @PosBat[1]=posY
    end
    def setPosPerson(posX,posY)
        @PosPerson[0]=posX
        @PosPerson[1]=posY
    end
    def TrowArrowToNorth()
        if (@Arrows>0)
            @Arrows=@Arrows-1;
            @PosArrow=[@PosPerson[0],@PosPerson[1]]
            while ThisPositionHasCave(@PosArrow[0], @PosArrow[1])
                @PosArrow[1]=@PosArrow[1]-1
                if TheMonsterIsDied(@PosArrow)
                    return true
                end 
            end
            @map.AddArrowsToCave(@PosArrow[0], @PosArrow[1]+1, 1)
            return false
        end
    end
    def TheMonsterIsDied(pos)
        return pos==@PosMonster
    end
    
    def ThrowArrowToSouth()
        if (@Arrows>0)
            @Arrows=@Arrows-1;
            @PosArrow=[@PosPerson[0],@PosPerson[1]]
            while ThisPositionHasCave(@PosArrow[0], @PosArrow[1])
                if TheMonsterIsDied(@PosArrow)
                    return true
                end 
                @PosArrow[1]=@PosArrow[1]+1
            end
            @map.AddArrowsToCave(@PosArrow[0], @PosArrow[1]-1, 1)
            return false
        end
       
    end
    def ThrowArrowToEast()
        if (@Arrows>0)
            @Arrows=@Arrows-1;
            @PosArrow=[@PosPerson[0],@PosPerson[1]]
            while ThisPositionHasCave(@PosArrow[0], @PosArrow[1])
                @PosArrow[0]=@PosArrow[0]-1
                if TheMonsterIsDied(@PosArrow)
                    return true
                end 
            end
            @map.AddArrowsToCave(@PosArrow[0]+1, @PosArrow[1], 1)
            return false
        end
        
    end
    def ThrowArrowToWest()
        if (@Arrows>0)
            @Arrows=@Arrows-1;
            @PosArrow=[@PosPerson[0],@PosPerson[1]]
            while ThisPositionHasCave(@PosArrow[0], @PosArrow[1])
                @PosArrow[0]=@PosArrow[0]+1
                if TheMonsterIsDied(@PosArrow)
                    return true
                end 
            end
            @map.AddArrowsToCave(@PosArrow[0]-1, @PosArrow[1]+1, 1)
            return false
        end
        
    end

    def GetRandomCave()
        @AvaiableCaves=[[]]
        ind=0
        if(ThisPositionHasCave(@PosMonster[0]+1, @PosMonster[1]))
            @AvaiableCaves[ind]=[@PosMonster[0]+1, @PosMonster[1]]
            ind=ind+1
        end
        if(ThisPositionHasCave(@PosMonster[0]-1, @PosMonster[1]))
            @AvaiableCaves[ind]=[@PosMonster[0]-1, @PosMonster[1]]
            ind=ind+1
        end
        if(ThisPositionHasCave(@PosMonster[0], @PosMonster[1]+1))
            @AvaiableCaves[ind]=[@PosMonster[0], @PosMonster[1]+1]
            ind=ind+1
        end
        if(ThisPositionHasCave(@PosMonster[0], @PosMonster[1]-1))
            @AvaiableCaves[ind]=[@PosMonster[0], @PosMonster[1]-1]
            ind=ind+1
        end
        return @AvaiableCaves[rand(@AvaiableCaves.length)]
    end
    def GetRandomPerson()
        @AvaiableCaves=[[]]
        ind=0
        if(ThisPositionHasCave(@PosPerson[0]+1, @PosPerson[1]))
            @AvaiableCaves[ind]=[@PosPerson[0]+1, @PosPerson[1]]
            ind=ind+1
        end
        if(ThisPositionHasCave(@PosPerson[0]-1, @PosPerson[1]))
            @AvaiableCaves[ind]=[@PosPerson[0]-1, @PosPerson[1]]
            ind=ind+1
        end
        if(ThisPositionHasCave(@PosPerson[0], @PosPerson[1]+1))
            @AvaiableCaves[ind]=[@PosPerson[0], @PosPerson[1]+1]
            ind=ind+1
        end
        if(ThisPositionHasCave(@PosPerson[0], @PosPerson[1]-1))
            @AvaiableCaves[ind]=[@PosPerson[0], @PosPerson[1]-1]
            ind=ind+1
        end
        return @AvaiableCaves[rand(@AvaiableCaves.length)]
    end
    
    def MoveMonster()
        @PosMonster=GetRandomCave()
    end
    def MoveRandomPerson()
        @PosPerson=GetRandomCave()
    end
    def MoveRandomPerson()
        @PosPerson=GetRandomPerson
    end
    def QuantityArrows()
        return @Arrows
    end
    def QuantitySprays()
        return @Sprays
    end
    def AddArrows()
        @Arrows=@Arrows+ActualCaveGetArrows()  
    end
    def AddSprays()
        @Sprays=@Sprays+ActualCaveGetSprays() 
    end
    def ActualCaveGetArrows()
        return @map.PickUpArrows(@PosPerson[0], @PosPerson[1])
    end
    def ActualCaveGetSprays()
        return @map.PickUpSprays(@PosPerson[0], @PosPerson[1])
    end
    def MovePerson(sentido)
        if (sentido=="norte" && AcutalCaveHasNorth())
            @PosPerson[1]=@PosPerson[1]-1
            AddArrows()
            AddSprays()
        end
        if (sentido=="sud" && AcutalCaveHasSouth())
            @PosPerson[1]=@PosPerson[1]+1
            AddArrows()
            AddSprays()
        end
        if (sentido=="este" && AcutalCaveHasEast())
            @PosPerson[0]=@PosPerson[0]+1
            AddArrows()
            AddSprays()
        end
        if (sentido=="oeste" && AcutalCaveHasWest())
            @PosPerson[0]=@PosPerson[0]-1
            AddArrows()
            AddSprays()
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
    def IsTheSamePosWaterWellAndPerson()
        return @PosWaterWell==@PosPerson
    end
    def IsNearTheMonster()
        return IsInTheSameColumnAndNear() || IsInTheSameRowAndNear()
            
    end
    def IsNearTheWeaterWell()
        return IsTheWaterWeelInTheSameColumnAndNear() || IsTheWaterWellInTheSameRowAndNear()
            
    end
    
    def IsBatIsNearOfPerson()
        return TheBatIsInTheSameColumnAndNear() || TheBatIsInTheSameRowAndNear()
    end
    def IsInTheSameColumnAndNear()
        return (@PosMonster[0]-1==@PosPerson[0] && @PosMonster[1]==@PosPerson[1] || @PosMonster[0]+1==@PosPerson[0] && @PosMonster[1]==@PosPerson[1])
    end
    
    def TheBatIsInTheSameColumnAndNear()
        return (@PosBat[0]-1==@PosPerson[0] && @PosBat[1]==@PosPerson[1] || @PosBat[0]+1==@PosPerson[0] && @PosBat[1]==@PosPerson[1])
    end
    def IsTheWaterWeelInTheSameColumnAndNear()
        return (@PosWaterWell[0]-1==@PosPerson[0] && @PosWaterWell[1]==@PosPerson[1] || @PosWaterWell[0]+1==@PosPerson[0] && @PosWaterWell[1]==@PosPerson[1])
    end
    def IsInTheSameRowAndNear()
        return (@PosMonster[1]-1==@PosPerson[1] && @PosMonster[0]==@PosPerson[0] || @PosMonster[1]+1==@PosPerson[1] && @PosMonster[0]==@PosPerson[0])  
    end
    def TheBatIsInTheSameRowAndNear()

        return (@PosBat[1]-1==@PosPerson[1] && @PosBat[0]==@PosPerson[0] || @PosBat[1]+1==@PosPerson[1] && @PosBat[0]==@PosPerson[0])  
    end
    def IsTheWaterWellInTheSameRowAndNear()
        return (@PosWaterWell[1]-1==@PosPerson[1] && @PosWaterWell[0]==@PosPerson[0] || @PosWaterWell[1]+1==@PosPerson[1] && @PosWaterWell[0]==@PosPerson[0])  
    end
    def IsInTheSamePosBatAndPersonMove()
        return (@PosBat[1]==@PosPerson[1] && @PosBat[0]==@PosPerson[0] || @PosBat[1]==@PosPerson[1] && @PosBat[0]==@PosPerson[0])  
    end
    def IsInTheSamePosWaterWellAndPersonMove()
        return (@PosWaterWell[1]==@PosPerson[1] && @PosWaterWell[0]==@PosPerson[0] || @PosWaterWell[1]==@PosPerson[1] && @PosWaterWell[0]==@PosPerson[0]) 
        
    end
    def IsInTheSamePosBatAndPerson()
                if (@PosBat[1]==@PosPerson[1] && @PosBat[0]==@PosPerson[0] || @PosBat[1]==@PosPerson[1] && @PosBat[0]==@PosPerson[0])  
                    
                    @PosPerson=GetRandomPerson()
                    return true
                end
                return false

    end
    def ThisPositionHasCave(posx, posy)
        return @map.HasCave(posx, posy)
    end
    def GetPositionOfMonster()
        return @PosMonster
    end
    def GetPositionOfPerson()
        return @PosPerson
    end
    def HasArrows()
        return @Arrows>0    
    end
    def HasSprays()
        return @Sprays>0    
    end
end  