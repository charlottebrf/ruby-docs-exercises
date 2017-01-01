#Learnings- Chapter 2

#methods
#can make method parameters  optional by providing default values

#it's legal for a method name to end in ?, !, or =

#methods return the value of theior last expression to their caller
#can also specify a methods return value with a return Statements


#classes

#a class is a template for creating object instances

#an object's class defines its instance methods (what it DOES)

#within instance methods you can create instance variables (what an object KNOWS
#about itself)



#A method body consists of one or more Ruby Statements that will be executed
#when the method is called.

#parenthesis should be left off of a method definition if (& only if) you're
#not defining any parameters

#if you don't specify a return value, methods will return the value of last expression evaluated

#method definitions that appear within a class definition are treated as instance methods
#for that class

#outside a class definition, instance variables can only be accessed via accessor methods

#can call attr_writer, attr_reader, & attr_accessor methods within class definition as
#a shortcut for defining accessor methods

#accessor methods can be used to ensure dae is valid before its stored in instance variables

#the raise method can be called to report an error in your program
