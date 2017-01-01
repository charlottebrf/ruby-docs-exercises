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

#Exercises

class Kite

attr_accessor :fly
attr_accessor :land

def fly (airline)
  puts "You're flying with #{airline}!"
  @fly = airline
end

def land (airport)
  puts "You're landing at #{airport}!"
  @land = airport
end

end

class Stuntkite < Kite

  attr_accessor :steer

  def steer (pilot)
    puts "Please steer carefully #{pilot}"
    @steer = pilot
  end

end


#instance variables belong to the object not the class!

car = car.new
puts car.instance_variables
#testing this there are no instance variables

car.odomoter = 22914
car.gas_used = 728
puts car.instance_variables

#car inherited the instance methods not the instance variables

#Instance variables belong to the object, not the class!
#important becuase if you deviate from your instance variable names matching your accessor method names then the subclass can interfere with its superclass functionality by overriding its instance variables.
#if instance variables are the same then they can write over one another
#use sensible variables names that match your attribute accessor names

#Overriding methods
#If the superclass's behaviour isn't what you need in the subclass, inheritance gives you another mechanism to help: method overriding. Replaces one or more methods in a subclass, replace the inherited methods from the superclass with methods specific to the subclass.

class Motorcycle < Vehicle
  def steer
    puts "Turn front wheel."
  end
end

motorcyle.steer #Turn front wheel

#if we call any other methods on motorcyle we'll get the inherited mehod, if a subclass needs specialised behaviour it can simply override the method it inherited from the superclass.


#subclass of a subclass can be possible- but can become overly complex 

class Car < Vehicle
end

class DragRacer < Car
  def accelerate
    puts "Inject nitrous!"
  end

end
