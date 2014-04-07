module ToyFactory
  class Dealer

    def initialize(order)
      @order = order
    end

    def make_order
      @order
    end

  end
end


# if customer has an order,
# create a Dealer with an order
#  and return the specified toy to the customer
# when the toy is specified, return that toy to the customer