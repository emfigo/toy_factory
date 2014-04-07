module ToyFactory
  class Factory
    TOYS = [ "toys", "car", "doll", "robot", "puzzle", "waterproof_toy" ]
    KLASSES = [ Toy, Car, Doll, Robot, Puzzle, WaterproofToy ]

    def self.build(order)
      combination = {}
      TOYS.zip(KLASSES) do |toy, klass|
        combination.merge!(toy => klass)
      end 
      combination["#{order}"]
    end
  end
end
