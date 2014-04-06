Toy Factory
==========

The purpose of this project is to be used as a practical exercise to learn duck typing.

#Usage

Clone the project

```bash
git clone git@github.com:emfigo/toy_factory.git
```

This project will be built in 4 phases. Each one of them is a step to the final product:

## Phase I

Create a factory that receives an order and builds the specific toys for it.

IMPORTANT: The factory should have a class method called build that receives a string

```ruby
 #...
 
 ToyFactory::Factory.build('toy')

 #...
```
For now the only toy that we produce is called 'toy'

##Phase II

Since we have a lot of requests, is necessary that we build a dealer that will be in charge of taking the orders and send them to the factory

IMPORTANT: 

The dealer class should have an initializer with the order as a parameter 

```ruby
 #...
 
 ToyFactory::Dealer.new(order)

 #...
```

The order should be generated with a method called make_order that returns a string

```ruby
 #...
 
 dealer.make_order

 #...
```

Still the only toy that we produce is called 'toy'

##Phase III

Since we are really successful now we want to build more toys. Now the factory can receive the following toys and it should create the classes corresponding those toys

```ruby
 #...
 
 {
   car: Car,
   doll: Doll,
   robot: Robot,
   puzzle: Puzzle,
   waterproof_toy: WaterproofToy
 }

 #...
```

##PhaseIV

Everything is going really good for our factory, but still we want to be the best. Now each one of those toys will be created in it's own specific factory

```ruby
 #...
 
 {
   car: CarFactory,
   doll: DollFactory,
   robot: RobotFactory,
   puzzle: PuzzleFactory,
   waterproof_toy: WaterproofToyFactory
 }

 #...

----------------------

For each phase create a new branch with your name and the phase of the project

```bash
git checkout -b #{name}-#{phase}-toy-factory
```

when you finish, run the test for the specific phase

```bash
bundle exec rake #{phase}
```

Push the branch remotely to the repository


