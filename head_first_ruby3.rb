#Inheritance

#use inheritance to let your classes share methods
#if one class has some functionality, classes that inherit from it can get that functionality
#automatically
#instead of repeating method definitions across many similar classes, inheritance
#let's you move the common methods to a single class, can then specify that oher classes inherit from this class

#superclass- class with the common methods (e.g. Vehicle)
#subclasses- classes that inherit those methods (e.g. Car, Truck, Motorcycle)

#if a superclass has instance methods- subclasses automaticallly inherit those methods
#can get access to all the methods you need from the superclass, without having to duplicate
#the methods' code in each subclass-which means less duplicated code
#all the classes will still have the same methods, but there's only one copy of each method to maintain!
#note: subclasses technically do not inherit instance variables; they inherit the attributor accessor methods that create those variables


#Defining a superclass (requires nothing special)
#no special syntax to define a superclass, it's just an ordinary class

class Vehicle
  attr_accessor :odometer
  attr_accessor :gas_used
#all attributes will be inherited when we delcare a subclass

  def accelerate
    puts "Floor it!"
  end

  def sound_horn
    puts "Beep! Beep!"
  end

  def steer
    puts "Turn front 2 wheels"
  end

  def mileage
    return @odometer / gas_used
  end
  #all instance methods will also be inherited once subclasses are declared

end

#Defining a subclass
#subclass definition looks just like an ordinary class definition, except that you specify the superclass it will inherit from
#use the less-than < symbol as subclass is a subset of the superclass it will inherit from

#class car < vehicle
    #class name #superclass name

#can also define additional methods & attributes here

class Car < Vehicle
end

class Truck < Vehicle
end

class Motorcycle < Vehicle
end
#have access to all of the superclass's functionality

truck = Truck.new
truck.accelerate
truck.steer

car = Car.new
car.odomoter = 11432
car.gas_used = 366

puts "Lifetime MPG:"
puts car.mileage


#Adding methods to subclasses

class Truck < Vehicle

  attr_accessor :cargo

  def load_bed (contents)
    puts "Securing #{contents} in the truck bed"
    @cargo = contents
  end

end

truck = Truck.new
truck.load_bed("259 bouncy balls")
puts "The truck is carrying #{truck.cargo}"

#subclasses keep inherited methods alongside new ones 
