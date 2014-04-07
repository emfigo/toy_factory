module ToyFactory
  class Dealer
    attr_accessor :order
    def initialize(order)
      @order = order
    end

    def make_order
      order
    end
  end
end
