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

  def name
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
#@name @age only allows for hardcoded values
#Ruby never allows us to access instance variables directly from outside our class
#Encapsulation prevents other parts of the program from directly accessing or changing
#an object's instance variables


#Attribute accessor methods
#can't access or change instance variables from outside the class
#instead create accessor methods- write values to the instance variables & read them back out to you
#easy to extend those methods to validate data- reject any values that get passed in
#two types: attribute writers & attribute readers
#attribute- piece of data regarding an object
#attribute writer methods- set an instance variable
#attribute reader methods- get value of an instance variable back


class MyClass

  def my_attribute= (new_value)
    #attribute writer method
    @my_attribute = new_value
  end

  def my_attribute
    #attribute reader method
    @my_attribute
  end

end

#create new instance of the above class
my_instance - MyClass.new
my_instance.my_attribute = "assigned via method call "
puts my_instance.my_attribute
my_instance.my_attribute= ("same here")
puts my_instance.my_attribute
#above shgows how attribute writer method is called- in actual Ruby programs only use
#assignment syntax
#accessor methods are ordinary instance methods; referred to as "accessor methods"
#because primary purpose is to access an instance variable

#attribute writer similarly primary purpose is to update an instance variable
#calls to this method are treadted differently

class Dog

  def name= (new value)
    @name = new_value
    #write a new value to @name - attribute writer
  end


  def name
    @name
    #read a new value from @name -attribute reader
  end

  def age= (new_value)
    @age = new_value
      #write a new value to @age - attribute writer
  end

def age
  @age
  #read a new value from @age - attribute reader
end

def report_age
  puts "#{@name} is #{@age} years old."
end


#name of an attribute reader method usually match the name of the instance variable it reads
#same is rue of the attribute writer methods with an = on the end of the name
#with accessor methods in place can (indrectly) set & use @name & @age instance variables
#from outside the Dog class

fido = Dog.new
fido.name = "Fido"
fido.age = 2
rex = Dog.new
rex.name = "Rex"
rex.age = 3
fido.report_age
rex.report_age


#Attribute writers & readers

#so common to create pair of accessor methods that Ruby offers us shortcuts
# att_writer , att_reader  ,  att_accessor
#calling these 3 methods within your class definition will automatically define new
#accessor methods for you

attr_writer :name
attr_reader :name
attr_accessor :name

#symbols
# :name & :age are symbols
# symbol is a series of characters, like a string
# unline a string a symbol's value can't be changed later
# always with colon & lowercase with underscores between words

class Dog
  attr_accessor :name, :age

  def report_age
    puts "#{@name} is #{@age} years old."
  end

  def talk
    puts "#{@name} says Bark!"
  end

  def move(destination)
    puts "#{@name} runs to the #{@destination}."
  end

end

#Ensuring data is valid with accessors
#need to add some simple data validation to the methods, to give an error any time invalid value is passed in


class Dog

  attr_reader :name, :age
  #we only define the reader methods automatically as we're defining writer methods

  def name= (value)
  if value == ""
    raise "Name can't be blank!"
  end
    #puts "Name can't be blank!"
  #else
    @name = value
  end
    #this statement won't be reached if raise is called

#if the name is blank, print an error message
#set the instance variableonly if the name is validation

def age= (value)
  if value > 0
    raise "An age of #{value} isn't valid!"
  end
    #puts "An age of #{value} isn't valid!"
    @age = value
  end
  #this statement won't be reached if raise is called

#if age is negative, print an error message
#set the instance variable only if the age is valid

def report_age
  puts "#{@name} is #{@age} years old."
end

end

#using raise in our attribute writer methods allows to report if invalid answers are given
