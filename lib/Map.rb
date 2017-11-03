require './lib/Cave.rb'
class Map
    def initialize
        @caves=[[], [], [], []]
        @LastCave=0
        @PosOfPerson=[]
        @PosOfMonster=[]
    end

    def reset
        @caves=[[]]
        @LastCave=0
        @PosOfPerson=[]
        @PosOfMonster=[]
    end

    def CreateCave (posx, posy)
        if (HasCave(posx, posy))
            return "Ya existe una cueva"
        else
            AddCave(posx, posy)
            return "Cueva añadida"    
        end
    end

    def AddCave(posx, posy)
        @caves[posx][posy]=Cave.new
        IncrementLastCave()
        AddNumberOfCave(posx, posy)
    end

    def IncrementLastCave()
        @LastCave=@LastCave+1
    end

    def AddNumberOfCave(posx, posy)
        @caves[posx][posy].AddNumberOfCave(@LastCave)
    end

    def HasCave(posx, posy)
        if (@caves[posx][posy]==nil)
            return false
        else
            return true
        end
    end

    def AssignMonster(posx, posy)
        if (HasCave(posx, posy))
            UpdatePosMonster(posx, posy)
            return "Monstruo agregado"
        else
            return "No hay una cueva en esa posicion"
        end
    end

    def UpdatePosMonster(posx, posy)
        @PosOfMonster=[posx, posy] 
    end

    def AssignAvatar(posx, posy)
        if (HasCave(posx, posy))
            UpdatePosPerson(posx, posy)
            return "Personaje agregado a la "+ NumberOfCaveInPos(posx, posy)
        else
            return "No hay una cueva en esa posicion"
        end
    end

    def NumberOfCaveInPos(posx, posy)
        return @caves[posx][posy].GetNumber()
    end

    def UpdatePosPerson(posx, posy)
        @PosOfPerson=[posx, posy]
    end

    def FeelSmell
        if (NearMonster())
            return "Siento un olor"
        else
            return ""
        end
    end

    def NearMonster()
        if (@PosOfMonster[0]-@PosOfPerson[0]==1 || @PosOfMonster[1]-@PosOfPerson[1]==1 || @PosOfMonster[0]-@PosOfPerson[0]==-1 || @PosOfMonster[1]-@PosOfPerson[1]==-1)
            return true
        else
            return false
        end
    end
    def GetPosMonster
        return @PosOfMonster
    end
    def GetPosPerson
        return @PosOfPerson
    end
end