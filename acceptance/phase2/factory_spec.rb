require 'spec_helper'
require 'toy_factory/toys'
require 'toy_factory/factories/factory'
require 'toy_factory/dealer'
require 'customer'

describe ToyFactory do
  let(:toy) { 'toy' }
  let(:customer) { Customer.new(type_of_toy: toy) }
  let(:dealer) { described_class.const_get('Dealer').new(order) }
  let(:order) { customer.order }

  
  describe 'dealer' do
    it 'returns a dealer that is really a dealer' do
      expect(dealer.class).to eq(described_class.const_get('Dealer'))
    end

    it 'creates a dealer with an order from a customer' do
      expect{dealer}.not_to raise_error
    end

    it 'creates an order when is required' do
      expect(dealer.make_order).to eq(toy)
    end
  end

  describe 'factory' do
    let(:factory) { described_class.const_get('Factory') }
    let(:dealer_order) { dealer.make_order }

    it 'returns the toy specified by the customer' do
      expect(factory.build(dealer_order)).to eq(Kernel.const_get(toy.capitalize))
    end
  end
end

