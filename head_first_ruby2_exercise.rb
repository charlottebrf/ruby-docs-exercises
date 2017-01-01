class Mage
  attr_accessor :name, :spell

  def enchant (target)
    puts "#{@name} casts #{@spell} on #{target.name} !"
  end

end


#irb -I .
#to launch ruby files from current directory
# require "name of file without .rb at the end"

#Learnings quiz
#I stay within an object instance & store data about that object - instance variable

#I'm another name for a piece of data about an object. I get stored in an instance variable - Attribute

#I store data within a method. As soon as the method returns, I disappear - Local variable

#I'm a kind of instance method. My main purpose is to read & write an instance variable- Attribute accessor

#I'm used in Ruby programs to refer to things whose names don't change (like methods) -Symbol x
