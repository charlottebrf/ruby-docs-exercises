#Chapter 2- methods & classes aims

#create own methods & create own classes - templates for new objects
#instance variables - define what those objects know
#instance methods - define what they do
#how defining own classes can make code easier to read & maintain

#example method definition

#def print_sum (arg1, arg2)
#  print arg1 + arg2
#end


#def- start of definition
#(arg1, arg2) - parameters - stores arguments in the parameters within the method

#DEFINING METHODS

def accelerate
  puts "Stepping on the gas"
  puts "Speeding up"
end

def sound_horn
  puts "Pressing the horn button"
  puts "Beep beep!"
end


def use_headlights (brightness)
  puts "Turning on #{brightness} headlights"
  puts "Watch out for the deer!"
end
#parameter is used in the output

#CALLING METHODS

#once created a method you can then make calls on them
#ruby allows calls anywhere
sound_horn
accelerate
use_headlights ("high-beam")
#use_headlights has a call with an argument

#didn't use dot operator as like puts & print these methods are included in the top-level
#execution environment- methods defined outside of any class, can be called anywhere
#without using the dot operator to specific a receiver

#METHOD NAMES
#same approach as with variables, use snake case
#by convention methods that return a boolean value given ?
#methods have potentially suprising side effects given names end in !
#methods ending with = will be used differently by ruby, so not to be used for regular methods

#parameters
#accessed like variables
def print_area (length, width)
  puts length * width
end


#Optional parameters
def order_sode (flavor, size = "medium", quantity = 1)
  if quantity == 1
    plural = "soda"
  else
    plural = "sodas"
  end
  puts "#{quantity} #{size} #{flavor} #{plural}, coming right up"

  #if you want to override the default, provide an argument with the value you want
  #if happy with default can skip argument all together

  #order_soda ("orange")
  #specifies flavour only & uses default for size & quantity
  #order_soda ("lemon-lime", "small", 2)
  #specifies everything
  #order_soda ("grape", "large")
  #specify flavour & sizel use default for quantity
  #don't place an optional parameter before a required one


  #Difference between an argument & a parameter

  #define & use parameters within a method definition
  #provide arguments with method calls

  def say_hello (name)
    puts "Hello, #{name}!"
  end
  #(name) & #{name} are parameters

  say_hello("Marcy")
  #("Marcy") -argument

  #each argument you pass with the method call gets stored in a method parameter
  #two terms distinguish whether you're talking about a method definition or a method call

  #Optional parameters continued

  def use_headlights (brightness = "low-beam")
    puts "Turning on #{brightness} headlights"
    puts "Watch out for the deer!"
  end

#make the use_headlights parameter optional
use_headlights
#default
use_headlights ("high beam")
#overrides

#Return values
#ruby methods have a return value, a value they send back to the code that called them
#ruby method can return a value to its caller using the return keyword

def mileage (miles_driven, gas_used)
  return miles_driven / gas_used
end

#use same method to calculate both types of mileage

trip_mileage = mileage (400, 12)
puts "You got #{trip_mileage} MPG on this trip."

lifetime_mileage = mileage (11432, 366)
puts "This car average #{lifetime_mileage} MPG."

#Implicit return values
#don't need return keyword in above method
#value of last expression evaluated within a method

def mileage (miles_driven, gas_used)
   miles_driven / gas_used
end
#works exactly the same, in short methods don't use return

#methods return a value to the code that called them

#return key useful for situations when running code would be pointless or harmful
#dividing anything by zero causes an error

def mileage (miles_driven, gas_used)
  if gas_used == 0
    return 0.0
    #return will stop any further calculations taking place if 0
  end
  miles_driven / gas_used
end

#methods very useful to avoid duplication & keep code organozed


#messy methods with too many if statement example

def talk(animal_type, name)
  if animal_type == "bird"
    puts "#{name} says Chirp! Chirp!"
  elsif animal_type == "dog"
    puts "#{name} says bark!"
  elsif animal_type == "cat"
    puts "#{name} says meow!"
  end
end


def move(animal_type, name, destination)
  if animal_type == "bird"
    puts "#{name} flies to the #{destination}."
  elsif animal_type == "dog"
    puts "#{name} runs to the #{destination}."
  elsif animal_type == "cat"
    puts "#{name} runs to the #{destination}."
  end
end

def report_age (name, age)
  puts "#{name} is #{age} years old."
end

#typical calls to the method

move("bird", "Whistler", "tree")
talk ("dog", "Sadie")
talk ("bird", "Whistler")
move ("cat", "Smudge", "house")
report_age ("Smudge", 6)
