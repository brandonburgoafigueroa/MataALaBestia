require './lib/Map.rb'
class Game
    def initialize
        @default=Map.new()
        MapDefault()
        @PosOfMonster=@default.GetPosMonster
        @PosOfPerson=@default.GetPosPerson
    end
    def MapDefault()
        @default.CreateCave(0,0)
        @default.CreateCave(0,1)
        @default.CreateCave(0,2)
        @default.CreateCave(0,3)
        @default.CreateCave(1,3)
        @default.CreateCave(2,3)
        @default.CreateCave(3,3)
        @default.AssignAvatar(0,0)
        @default.AssignMonster(0,2)
    end
    def MovePerson(orientation)
        if (orientation=="Sud")
            @PosOfPerson[1]=@PosOfPerson[1]+1
        end
        
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
    def ShowActualCaveNumber()
        cave=@default.GetCaveInfo(@PosOfPerson[0], @PosOfPerson[1])
        return cave.GetNumber
    end
end