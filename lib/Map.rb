require './lib/Cave.rb'
class Map
    def initialize
        @caves=[[]]
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
        if (@caves[posx][posy]==nil)
            @caves[posx][posy]=Cave.new
            @LastCave=@LastCave+1
            @caves[posx][posy].AddNumberOfCave(@LastCave)
            
            return "Cueva añadida"
        else
            return "Ya existe una cueva"
        end
    end
    def AssignMonster(posx, posy)
        if (@caves[posx][posy]!=nil)
            @PosOfMonster=[posx, posy]
            return "Monstruo agregado"
        else
            return "No hay una cueva en esa posicion"
        end
    end
    def AssignAvatar(posx, posy)
        if (@caves[posx][posy]!=nil)
            @PosOfPerson=[posx, posy]
            return "Personaje agregado a la "+ @caves[posx][posy].GetNumber()
        else
            return "No hay una cueva en esa posicion"
        end
    end
    def FeelSmell
        return "Siento un olor"
    end

end