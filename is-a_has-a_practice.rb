## Animal is-a object look at the extra credit
class Animal
end

## is-a relationship (Dog is-a type of Animal)
class Dog < Animal

  def initialize(name)
    ## has-a relationship (instance of Dog has-a name)
    @name = name
  end
end

## is-a (Cat is-a type of animal)
class Cat < Animal

  def initialize(name)
    ## has-a (Cat has-a name)
    @name = name
  end
end

## Person is-a object
class Person

  def initialize(name)
    ## has-a (Person has-a name)
    @name = name

    ## Person has-a pet of some kind
    @pet = nil
  end

  attr_accessor :pet
end

## is-a (Employee is-a Person)
class Employee < Person

  def initialize(name, salary)
    ## ?? hmm what is this strange magic?
    ## Employee inherits name from Person (Person is the super for Employee)
    ## has-a (Employee has-a name)
    super(name)
    ## has-a (Employee has-a salary)
    @salary = salary
  end

end

## is-a (Fish is an object)
class Fish
end

## is-a (Salmon is-a type of fish)
class Salmon < Fish
end

## is-a (Halibut is-a fish)
class Halibut < Fish
end

## These are instantiating objects
## rover is-a Dog
rover = Dog.new("Rover")

## is-a (Satan is-a cat)
satan = Cat.new("Satan")

## is-a (Mary is-a person)
mary = Person.new("Mary")

## has-a (Mary has-a pet (named Satan))
mary.pet = satan

## is-a, has-a (Frank is an Employee that has-a salary of 120000)
frank = Employee.new("Frank", 120000)

## has-a (Frank has-a pet named Rover)
frank.pet = rover

## is-a (flipper is-a fish)
flipper = Fish.new()

## is-a (crouse is-a salmon)
crouse = Salmon.new()

## is-a (harry is-a halibut)
harry = Halibut.new()


## What is the point of @pet = nil?
## That gives a default to a Person's pet that is nil or "not set to anything."
