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
