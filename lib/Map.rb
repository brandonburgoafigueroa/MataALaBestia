require './lib/Cave.rb'
class Map
    def initialize
        @caves=[[], [], [], []]
        @LastCave=0
        @PosPersonStart=[]
        @PosMonsterStart=[]
        @PosBatStart=[]
        @PosWeaterWellStart=[]
    end
    def Default()
        CreateCave(0,0)
        CreateCave(0,1)
        CreateCave(0,2)
        CreateCave(0,3)
        CreateCave(1,3)
        CreateCave(2,3)
        CreateCave(3,3)
        AssignDoors(0,0, false, true, false, false)
        AssignDoors(0,1, true, true, false, false)
        AssignDoors(0,2, true, true, false, false)
        AssignDoors(0,3, true, false, true, false) #up, down, right, left
        AssignDoors(1,3, false, false, true, true)
        AssignDoors(2,3, false, false, true, true)
        AssignDoors(3,3, false, false, false, true)
        SetStartPersonPos(0,0)
        SetStartMonsterPos(3,3)
        SetStartBatPos(0,3)
        SetStartWaterWellPos(0,2)
        AddArrowsToCave(0, 1, 3)
        AddSpraysToCave(0, 1, 3)
    end
    def AddArrowsToCave(posx, posy, quantity)
        if (HasCave(posx, posy))
            return @caves[posx][posy].AddArrow(quantity)
        else
            return "No existe cueva en esta posicion"
        end
    end
    def AddSpraysToCave(posx, posy, quantity)
        if (HasCave(posx, posy))
            return @caves[posx][posy].AddSpray(quantity)
        else
            return "No existe cueva en esta posicion"
        end
    end
    def PickUpArrows(posx, posy)
        return @caves[posx][posy].PickUpArrows()
    end
    def PickUpSprays(posx, posy)
        return @caves[posx][posy].PickUpSprays()
    end
    def GetStartPosPerson()
        return @PosPersonStart
    end
    def SetStartPersonPos(posx, posy)
        if (HasCave(posx, posy))
            @PosPersonStart=[posx, posy]
            return "Personaje agregado"
        else
            return false
        end
    end
    def GetStartPosWeaterWell()
        return @PosWeaterWellStart
    end
    def GetStartPosMonster()
        return @PosMonsterStart
    end
    def GetStartPosBat()
        return @PosBatStart
    end
    def SetStartBatPos(posx, posy)
        if (HasCave(posx, posy))
            @PosBatStart=[posx, posy]
            return "Murcielago agregado"
        else
            return false
        end
    end
    def SetStartWaterWellPos(posx, posy)
        if (HasCave(posx, posy))
            @PosWeaterWellStart=[posx, posy]
            return "Pozo agregado"
        else
            return false
        end
    end
    def SetStartMonsterPos(posx, posy)
        if (HasCave(posx, posy))
            @PosMonsterStart=[posx, posy]
            return "Monstruo agregado"
        else
            return false
        end
    end
    def CreateCave(posx, posy)
        if (!HasCave(posx, posy))
            @caves[posx][posy]=Cave.new
            @LastCave=@LastCave+1
            @caves[posx][posy].AddNumberOfCave(@LastCave)
            return "Cueva añadida"
        else
            return "Ya existe una cueva"
        end
        
    end
    def AssignDoors(posx, posy, north, south, east, west)
        @caves[posx][posy].DoorsAvaiable(north, south, east, west)
    end
    def GetNumberCaveOfPos(posx, posy)
        return @caves[posx][posy].GetNumber
    end
    def GetCave(posx, posy)
        return @caves[posx][posy]
    end
    def HasCave(posx, posy)
        if (@caves[posx]!=nil && @caves[posx][posy]!=nil && posx>=0 && posy>=0)
            return true  
        else
            return false
        end    
        
    end
end