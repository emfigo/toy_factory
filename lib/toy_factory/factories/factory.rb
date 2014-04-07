module ToyFactory
  class Factory
    def self.build(order)
      if order == 'toy'
        Toy
      elsif order == 'car'
        Car
      elsif order == 'doll'
        Doll
      elsif order == 'robot'
        Robot
      elsif order == 'puzzle'
        Puzzle
      elsif order == 'waterproof_toy'
        WaterproofToy
      end
    end
  end
end
