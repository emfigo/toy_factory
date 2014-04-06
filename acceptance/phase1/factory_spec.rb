require 'spec_helper'
require 'toy_factory/toys'
require 'toy_factory/factories/factory'
require 'customer'

describe ToyFactory::Factory do
  let(:toy) { 'toy' }
  let(:customer) { Customer.new(type_of_toy: toy) }
  
  it 'returns the toy specified by the customer' do
    expect(described_class.build(customer.order)).to eq(Kernel.const_get(toy.capitalize))
  end
end

