
#Superclass
class Camera

  def take_picture
    puts "Triggering shutter."
  end

  def load
    puts "Winding film."
  end

end

#Subclass
class DigitalCamera < camera

attr_accessor :load

  def load
    puts "Inserting memory card."
  end

end

#Sample code
camera = Camera.new
camera.load
camera.take_picture

camera2 = DigitalCamera.new
camera2.load
camera2.take_picture


#Quiz

#Inheritance = Allows a single method or attribute to be shared by multiple classes.

#Superclass = A class that hold the code for methods that are shared by one or more other classes.

#Subclass = A class that inherits one or more methods or attributes from a superclass.

#Overriding = Replaces a method inherited from a superclass with new functionality.
