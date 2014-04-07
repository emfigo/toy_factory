module ToyFactory
  class Dealer

    def initialize(order)
      @order = order
    end

    def make_order
      order = @order
      if order == 'toy'
        'toy'
      elsif order == 'car'
        'car'    
      elsif order == 'doll'
        'doll'
      elsif order == 'robot'
        'robot'
      elsif order == 'puzzle'
        'puzzle'
      elsif order == 'waterproof_toy'
        'waterproof_toy'
      end
    end

  end
end
