#Inheritance

#Inheritance lets a subclass inherit methods from a superclass.

#A subclass can define its own methods in addition to the methods it inherits.

#A subclass can override inherited methods, replacing them with its own version.

#Bullet points
#Any ordinary Ruby class can be used as a superclass

#To define a subclass, simply specify a superclass in the class definition.

#Instance variables are not inherited from a superclass, but the methods that create & access instance variables are inherited.

#The super keyword can be used within a subclass method to call the overriden method of the same name on the superclass.

#If you don't specify arguments to the super keyword, it takes all arguments that the subclass method was called with, and psases them on to the superclass method.

#The expression value of the super keyword is the return value of the superclass method it calls.

#When you define a class, Ruby implicitly sets the Object class as the superclass, unless you specify one.

#Almost every Ruby object has instance methods from the Object class, inherited either directly or through another superclass.

#The to_s methods, instance_variables, and class methods are all inherited from the object class. 
