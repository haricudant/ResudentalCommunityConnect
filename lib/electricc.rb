
#require_relative 'Calculateelectricbills'
class Current
    def initialize(consumption,room,cost)
    def self.consumption
      @consumption  =  consumption
    end
    def self.room
    @room = room
    end
    def self.cost
    @cost = cost
    return cost
    end
    def self.show
      raise 'NoImplementationError'  
     end
     
end
class Electriccureent < Current
    
end