module ToyFactory
  class Factory

    def self.build(order)
      if order == 'toy'
        Toy
      elsif order == "car"
        ToyFactory::CarFactory.build(order)
      elsif order == "doll"
        ToyFactory::DollFactory.build(order)
      elsif order == "robot"
        ToyFactory::RobotFactory.build(order)
      elsif order == "puzzle"
        ToyFactory::PuzzleFactory.build(order)
      else order == "waterproof_toy"
        ToyFactory::WaterproofToyFactory.build(order)         
      end
    end

  end

  class CarFactory
    def self.build(order)
      Car
    end  
  end

  class DollFactory
    def self.build(order)
      Doll
    end
  end

  class RobotFactory
    def self.build(order)
      Robot
    end
  end

  class PuzzleFactory
    def self.build(order)
      Puzzle
    end
  end

  class WaterproofToyFactory
    def self.build(order)
      WaterproofToy
    end
  end

end