#Blocks

#Pass a chunk of code into a method like an argument, put looping code at the top & bottom of the method, then in the middle run the code that was passed in.

#Block is a chunk of code that you associate with a method call. While the method runs, it can invoke (execute) the block one or more times. Methods & blocks work in tandem to process data.

#Defining a method that takes blocks
#Can't have a block without having a method to accept it
#& - indicates a block

#Example block with method
def my_method (&my_block) #calling this method with a block stores to "my_block"
  puts "We're in the method, about to invoke your block!" #first executes code in method
  my_block.call #call instance method that invokes block's code- then goes to block & puts code after do
  puts "We're back in the method!" #then comes back to method
end

#example of a block
my_method do #a block must always follow a method call
  puts "We're in the block!" #block body
end

#start of block marked with keyword do, & ends with end
#body consistts of 1 or more lines of Ruby code
#when block is called from the method the code in the block body will be executed
#after the block runs, control retursn to the method that invoked it
#will give a syntax error if use block without a method separately

#You can pass many different blocks to a single method
#the code in the method is always the same but you can change the code you provide in the block


#Calling a block multiple times

def twice (&my_block)
  puts "In the method, about to call the block!"
  my_block.call
  puts "Back in the method, about to call the block again!"
  my_block.call
  puts "Back in the method, about to return!"
end

twice do
  puts "Wooo!"
end


#Block parameters
#When defining a Ruby method can specify that it will accept one or more parameters

def print_parameters (p1, p2)
  puts p1, p2
end

#can pass arguments when calling the method that will determine the value of those parameters
print_parameters("one", "two")

#A method can pass one or two arguments to a block
#Block parameters similar to method parameters, values passed when the block is run & can be accessed within the block body

def give (&my_block)
  my_block_call ("2 turtle doves", "1 partridge")#passed to block
end

give do |present1, present2|#parameters separated by commas
  puts "My method gave to me..."
  puts present1, present2
end

#the arguments to call are passed into the block as parameters which then get printed. Once block completes control returns to method as usual

#common to use just 1 block with a method, multiple blocks with a method would be used by procs

#using "yield" keyword

#been calling methods using call method on that object

def twice (&my_block)
  my_block.call
  my_block.call
end

#yield keyword will find & invoke the block a method was called with- no need to declare a parameter to accept the block

def twice
  yield
  yield
end

#As with call, we can also give one or more arguments to yield which will be passed to the block as parameters.

def give (&my_block)
  my_block.call("2 turtle doves", "1 partridge")
end

def give
  yield "2 turtle doves", "1 partridge"
end


#declaring a &block parameter is useful in a few rare instances. Use yield keyword in most cases, cleaner & easier to read

#Block formats

#curly brace is another format that can be used

def run_block
  yield
end

run_block do
  puts "do/end"
end

run_block {puts "braces"} #start of block at start of {, end of block at }


#also accept parameters

def take_this
  yield "present"
end

take_this do |thing|
  puts "do/end block got #{thing}"
end

take_this { |thing| puts "braces block got #{thing}"}

#ruby blocks that fit on a single line should be surrounded with curly braces. Blocks that span multiple lines should be surrounded with do...end. Common convention, though not the only one. 
