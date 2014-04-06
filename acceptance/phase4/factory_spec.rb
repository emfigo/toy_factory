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
    shared_examples 'creates an order when is required' do
      it 'creates an order when is required' do
        expect(dealer.make_order).to eq(toy)
      end
    end

    it 'returns a dealer that is really a dealer' do
      expect(dealer.class).to eq(described_class.const_get('Dealer'))
    end

    it 'creates a dealer with an order from a customer' do
      expect{dealer}.not_to raise_error
    end

    %w[car doll robot puzzle waterproof_toy].each do |toy|
      context "when the toy is a #{toy}" do
        let(:toy) { toy }

        include_examples 'creates an order when is required'
      end
    end
  end

  describe 'factory' do
    let(:dealer_order) { dealer.make_order }

    shared_examples 'returns the toy specified by the customer' do
      it 'returns the toy specified by the customer' do
        expect(factory.build(dealer_order)).to eq(Kernel.const_get(toy.capitalize.camelize))
      end

      it 'calls the correct factory for the specific toy' do
        expect(described_class.const_get("#{toy}_factory".camelize)).to receive(:build)
        
        described_class.const_get('Factory').build(dealer_order)
      end
    end

    %w[car doll robot puzzle waterproof_toy].each do |toy|
      context "when the toy is a #{toy}" do
        let(:factory) { described_class.const_get("#{toy}_factory".camelize) }
        let(:toy) { toy }

        include_examples 'returns the toy specified by the customer'
      end
    end
  end
end

