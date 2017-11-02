require './lib/Cave.rb'
class Map
    def initialize
        @caves=[[]]
    end
    def CreateCave (posx, posy)
        if (@caves[posx][posy]==nil)
            @caves[posx][posy]=Cave.new
            return "Cueva añadida"
        else
            return "Ya existe una cueva"
        end
    end
    def AssignMonster(posx, posy, monster)
        return @caves[posx][posy].AddMonster(monster)
    end

end