require './lib/Cueva.rb'
class Map
    def initialize
        @caves=[[]]
    end
    def CreateCave (posx, posy)
        @caves[posx][posy]=Cueva.new
        return "Cueva añadida"
    end
end