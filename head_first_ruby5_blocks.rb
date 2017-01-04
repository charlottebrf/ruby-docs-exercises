#Blocks

#Pass a chunk of code into a method like an argument, put looping code at the top & bottom of the method, then in the middle run the code that was passed in.

#Block is a chunk of code that you associate with a method call. While the method runs, it can invoke (execute) the block one or more times. Methods & blocks work in tandem to process data.

#Defining a method that takes blocks
#Can't have a block without having a method to accept it
#& - indicates a block

#Example block with method
def my_method (&my_block) #calling this method with a block stores to "my_block"
  puts "We're in the method, about to invoke your block!"
  my_block.call #call instance method that invokes block's code
  puts "We're back in the method!"
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
