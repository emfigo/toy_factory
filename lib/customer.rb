class Customer
  class NoTypeOfToySpecified < RuntimeError; end

  attr_reader :requirements
  attr_reader :toy

  def initialize( opts )
    raise NoTypeOfToySpecified unless opts[:type_of_toy]

    @toy = opts[:type_of_toy]
    @requirements = opts[:requirements]
  end

  def order
    requirements ? requirements.merge(toy: toy) : toy
  end
end
