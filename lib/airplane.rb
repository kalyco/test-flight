class Airplane
  attr_accessor :model, :wing_load, :hp, :running, :flying, :alighting, :fuel
    def initialize(model, wing_load, hp)
    @model = model
    @wing_load = wing_load
    @hp = hp
    @running = 0
    @flying = false
    @alighting = false
    @fuel = 30
    end
    def start
      if @running == 0
        @running += 1
        @fuel -= 10
      return "airplane started"
      else
        "airplane already started"
      end
    end
    def takeoff
      if @running == 1 && @flying == false
        @flying = true
        @fuel -= 10
        return "airplane launched"
      elsif  @flying == true
        return "airplane in flight"
      else return "airplane not started. Please start"
      end
    end
    def land
      if @flying == true && @running == 1
        @alighting = true
        @fuel -= 10
        return "airplane landed"
      elsif @flying == false && @running == 1
        return "airplane already on the ground"
      else return "airplane not started, please start"
      end
    end
    def fuel_gauge
      if @fuel <= 0
        return "tank"
      else return "bingo"
      end
    end
end
