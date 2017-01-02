class Animal

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
