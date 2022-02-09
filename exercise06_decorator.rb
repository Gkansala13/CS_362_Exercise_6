#! /usr/bin/env ruby
# GRAYSON KANSALA
# Exercise 6: Decorator Pattern

# Do not modify this class. Pretend it is from a library that is "closed."
class HyperCar

  def initialize(sound)
    @sound = sound
  end

  def go
    3.times { puts @sound }
  end

end

# Do not modify this class. Pretend it is from a library that is "closed."
class CarService

  def initialize(car)
    @car = car
  end

  def execute
    @car.go
  end
end

class CarDecorator

  def initialize(hyper_car)
    @hyper_car = hyper_car
  end

  def go 
    puts "awooga"
    @hyper_car.go
    puts "waka waka waka"
  end
end


hyper_car = HyperCar.new("bzzzz")
service = CarService.new(hyper_car)
# service.execute

# TODO Exercise, using the decorator pattern. Can you add new behavior without
# changing the HyperCar class or the CarService class?

second_service = CarService.new(CarDecorator.new(hyper_car))
second_service.execute
# This `execute` call should print:
# > awooga!
# > bzzzz
# > bzzzz
# > bzzzz
# > waka waka waka!
