#The "super" keyword

#Using the super keyword within a method makes a call to a method of the same name on the Superclass

class Person

  def greeting
#super makes a call here
    puts "Hello!"
  end

end

class Friend < Person

  def greeting
    super
    puts "Glad to see you!"
  end

end

Friend.new.greeting
#making a call to the overriding method on the subclass, the super keyword makes a call to the overridden method on the superclass

#super keyword works like an ordinary method call in almost every respect

class Person

  def greeting
    "Hello!"
  end

end

class Friend < Person

  def greeting
    basic_greeting = super
    "#{basic_greeting} Glad to see you!"
  end

end

puts Friend.new.greeting


#You can pass it arguments, & those arguments will be passed to the superclass's method

class Person

  def greet_by_name(name)
    "Hello, #{name}!"
  end

end

class Friend < Person

  def greet_by_name (name)
    basic_greeting = super(name)
    "#{basic_greeting} Glad to see you!"
  end

end

puts Friend.new.greet_by_name("Meghan")

#super differs from a regular method call because if you leave the arguments off, the superclass method will automatically be called with the same arguments that were passed to the subclass method


class Friend < Person

  def greet_by_name (name)
    basic_greeting = super
    #the name argument will be forwarded on to the Person's greet_by_name method as well
    "#{basic_greeting} Glad to see you!"
  end

end

puts Friend.new.greet_by_name("Bert")

#The calls super & super() are not the same. By itself, super calls the overridden method with the same arguments the overriding method received. But super() calls the overridden arguments, even if the overriding method did receive arguments. 
