#Blocks & methods

#Can think of calling a method with a block as being kind of like plugging an appliance into an outlet.
#Like the outlet supplying power, the block parameters offer a safe, consistent interface for the method to supply data to your block.
#Block doesn't worry about how data got there, it just has to process the parameters it's been handed.

#As there are many kinds of utilities to supply many kinds of appliances, there are many methods in Ruby that supply data to blocks.
#The each method was the beginning.

def wire
  yield "current"
end

wire { |power| puts "Using #{power} to turn drill bit"}
wire { |power| puts "Using #{power} to spin mixer"}

#Arrays
#An array holds a collection of objects
#Arrays can be any size & can grow or shrink as needed
#Arrays are oprdinary Ruby objects & have many useful instance methods


#blocks
#A block is a chunk of code that you associate with a method call.
#When a method runs, it can invoke the block it was called with one or more times.
#Each time a block finishes running, it returns control to the method that invoked it.


#Bullet points
#The index is a number that can be used o retrieve a particular item from an array. An array's index starts with (0)
#You can also use the index to assign a new value to a particular array location.
#The length method can be used to get the number of items in an array.
#Ruby blocks are only allowed following a method call.
#There are two ways to write a bloc: do...end, {}
#Can specify that the last method parameter should be a block by preceding the parameter name with an &
#More common to use yield keyword. Don't have to specify a method parameter to take block- yield will find & invoke
#A block can receive one or more parameters from the method. Block parameters are similar to method parameters.
#A block can get or update the value of local variables that appear in the same scope as the block
#Arrays have an each method, which invokes a block once for each item in an array. 
