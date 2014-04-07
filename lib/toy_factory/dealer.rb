module ToyFactory
  class Dealer

    def initialize(order)
      @order = order
    end

    def make_order
      if @order == 'toy'
        'toy'
      end
    end

  end
end
