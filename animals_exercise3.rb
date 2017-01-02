#When you deine a new class, Ruby implicitly sets a class called Object as its superclass, unless you specify a superclass yourself.

class Animal
  #this is equivalent to class Animal < Object
  #therefore class Dog < Animal inherits from Animal which means from Object
  #almost every Ruby object directly or indirectly has Object as its superclass - so we can call useful methods e.g: to_s (converts an object to a string for printing), inspect (converts an object to debug string), class (tells you which class an object is an instance of), methods (tells you what instance methods an object has), instance_variables (gives you a list of an object's instance variables).

  attr_reader :name, :age

  def name= (value)
    if value == ""
      raise "Name can't be blank!"
    end
    @name = value
  end

  def age= (value)
    if value < 0
      raise "An age of #{value} isn't valid!"
    end
    @age = value
  end

  def talk
    puts "#{@name} says Bark!"
  end
#need to override this method for Bird & Cat

  def destination
    puts "#{@name} runs to the #{destination}."
  end

  def report_age
    puts "#{@name} is #{@age} years old."
  end

end

class Dog < Animal

  def to_s
    "#{@name} the dog, age #{age}"
end

class Bird < Animal

  def talk
    puts "#{@name} says Chirp! Chirp!"
  end
end

class Cat < Animal

  def talk
    puts "#{@name} says Meow!"
  end
end

class Armadillo < Animal

  def move (destination)
    puts "#{@name} unrolls!"
    super (destination)
    #explictly specifies the argument- can also leave off (destination)
    #adds in super-powered sublass for Armadillo
  end

end
#This works but it's unfortunate to have to replicate the code from the move method with new code?
#the "super" keyword (see explanation in inheritance3_super_keyword.rb

#Overrding a method in the Animal subclasses

#don't need any methods or attributes of their own- they inherit everything from the superclass

#Sample code
whiskers = Cat.new
whiskers.name = "Whiskers"
polly = Bird.new
polly.name = "Polly"

polly.age = 2
polly.report_age
fido.name("yard")
whiskers.talk

dillon = Armadillo.new
dillon.name = "Dillon"
dillon.move("burrow")

lucy = Dog.new
lucy.name = "Lucy"
lucy.age = 4
