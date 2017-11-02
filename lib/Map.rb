require './lib/Cave.rb'
class Map
    def initialize
        @caves=[[]]
        @LastCave=0
    end
    def reset
        @caves=[[]]
        @LastCave=0
    end
    def CreateCave (posx, posy)
        if (@caves[posx][posy]==nil)
            @caves[posx][posy]=Cave.new
            @LastCave=@LastCave+1
            @caves[posx][posy].AddNumberOfCave(@LastCave)
            return "Cueva añadida"
        else
            return "Ya existe una cueva"
        end
    end
    def AssignMonster(posx, posy, monster)
        return @caves[posx][posy].AddMonster(monster)
    end
    def AssignAvatar(posx, posy, avatar)
        return @caves[posx][posy].AddPerson(avatar)+" a la "+@caves[posx][posy].GetNumber
    end
end