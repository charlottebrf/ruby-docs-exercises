class Bird
  def talk (name)
    puts "#{name} says Chirp! Chirp!"
  end
  def move (name, destination)
    puts "#{name} flies to the #{destination}."
  end
end

class Dog
  def talk (name)
    puts "#{name} says Bark!"
  end
  def move (name, destination)
    puts "#{name} runs to the #{destination}."
  end
end

class Cat
  def talk (name)
    puts "#{name} says Meow!"
  end
  def move (name, destination)
    puts "#{name} runs to the #{destination}"
  end
end

bird = Bird.new
dog = Dog.new
cat = Cat.new
#Create new instances of our classes

bird.move("tree")
dog.talk
bird.talk
cat.move("house")
#call some methods on the instances


#code magnets challenge
class Blender
  def close_lid
    puts "Sealed tight"
  end
  def blend (speed)
    puts "Spinning on #{speed} setting."
  end
end

blender = Blender.new
blender.close_lid
blender.blend ("high")

#short hand for new strings & numbers

new_string = "Hello!"
new_float = 4.2

#can use instance variables to store data inside the object
#one of key benefits of object-orientated programming is that it keeps data & the methods
#that operate on the data in the same place
#storing names in the animal objects so don't have to pass too many arguments in our instance method

#local variables live until the method ends - local to the current scope
#second round of writing the animal method

class Dog

  def make_up_name
    @name = "Sandy"
  end


  def talk
    puts "#{@name} says Bark!"
  end
end

def move (destination)
  puts "#{@name} runs to the #{destination}."
end

def make_up_age
  @age = 5
end

def report_age
  puts "#{@name} is #{@age} years old"
end




dog = Dog.new
dog.make_up_name
dog.talk
dog.move("yard")
dog.make_up_age
dog.report_age

#Instance variables live as long as the instance does - tied to a particular object instance
#data written to an objects instance variables stays with that object

#my_variable - local variable
#@my_variable - Instance variable
