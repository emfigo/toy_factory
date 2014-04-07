module ToyFactory
  class Factory
    def self.build(order)
      if order == "toy"
        Toy
      end
    end
  end
end
