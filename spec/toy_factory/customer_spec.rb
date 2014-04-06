require 'spec_helper'
require 'customer'

describe Customer do
  describe '.new' do
    let(:type_of_toy) { double(String) }
    let(:requirements) { double }

    it 'returns a customer with who is interested in a type of toy with its requirements' do
      expect{described_class.new(type_of_toy: type_of_toy, requirements: requirements)}.not_to raise_error
    end
  end

  describe '#order' do
    let(:type_of_toy) { double(String) }
    let(:customer) { described_class.new(type_of_toy: type_of_toy, requirements: requirements) }

    context 'when it doesn not have requirements' do
      let(:requirements) { nil }
      
      it 'returns a simple order' do
        expect(customer.order).to eq(type_of_toy)
      end
    end

    context 'when it has requirements' do
      let(:material) { double(String) }
      let(:age) { double(String) }
      let(:smart) { double('Boolean') }
      let(:requirements) { { material: material, age: age, smart: smart } }
      
      it 'returns an order with all the requirements listed' do
        expect(customer.order).to eq({ toy: type_of_toy, material: material, age: age, smart: smart })
      end
    end
  end
end
