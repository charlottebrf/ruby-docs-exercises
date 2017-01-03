#Initiatlizing Instances

#ways to create objects that are safe to use right away, to avoid error messages on instance variables
#how to write class methods, can use to create & set up an object even more easily.

#Payroll system example

#Instance variables (what we know): Employee name, Employee Salary
#Set up an attribute reader methods for @name @salary instance variables, then add writer methods with validation, then add this to the print_pay_stub instance method that print's employee's name & their pay for period.
#Instance method (what we do): calculate & print pay for a 2 week period


class Employee

  attr_reader :name , :salary
  #instance variables- create attribute writer methods manually, so we can validate the data.Reader methods automatically set up.

  def name= (name)
    if name ==""
      raise "Name can't be blank!"
    end
    @name= name
  end
  #Instance variable stores the name & below the salary

  def salary= (salary)
    if salary < 0
      raise "A salary of #{salary} isn't valid!"
    end
    @salary= salary
  end

  def initialize (name = "Anonymous", salary = 0.0)
    self.name = name #making calls to the attribute writer methods, not assigning to variables
    self.salary = salary
  end
  #setting the @name & @salary instance variables - now an initialize method is set up already set up for new Employee instance, safe to call print_pay_stub on them
  #sets a defaul of Anonymous & 0 -use name parameter to set @name isntance variable, use salary parameter to set @salary instance variable
  #Be careful not pass new arguments to new - will be no arguments to forward on to initialize
  #Can have best of both worlds to initialize in an ordinary method to utilize feaures of an ordinary method with optional parameters- allows you to call both employee.new & specific names of employees also.
  #using self. states that we definitely want to make a call to the "name" method & "salary" method
  #means that the validation code works without duplicating code

  def print_pay_stub
    puts "Name: #{name}"
    pay_for_period = (salary / 365.0) * 14 #could use self.salary & self & self.name but self is optional here & works wihout them
    formatted_pay = format("%.2f", pay_for_period) #get a string with pay amount rounded to 2 decimal places
    puts "Pay This Period: $#{formatted_pay}" #print formatted string amount
  end
  #instance method

end

#Now employee class is defined, able to create new instances & assign their name & salary attributes

amy = Employee.new
amy.name = "Amy Blake"
amy.salary = 50000 #still gives a float for pay_for_period as use a float with 365.0
amy.print_pay_stub

#validation code ensure no blank assignments & negative numbers

#Two bugs to fix:
#1. Employee pay is getting its decimal places chopped off. Need to look at difference between Ruby's Float & Fixnum numeric classes
#2. We don't want to display too many decimal places, so need to look at the format method to format numbers properly

#Bug 1.- Float & Fixnum numbers

#When dividing instances of the Fixnum class (Ruby class that represents integers), Ruby rounds fractional numbers down to the nearest whole number
#Fixnum numbers aren't meant to store numbers with a decimal place
#check if a number is Fixnum by calling its class
#Float numbers have a decimal point
#Doesn't matter if both divided & divisor are Float instances, Ruby gives a Float back as long as either operand is a Flot e.g. 50000.0 / 365 => 136.986..., same is true for addition, multiplication & subtraction
#When doing division make sure at least one operand is a Float


#Bug 2.- Formatting numbers for printing

#result = format("Rounded to two decimal places: %0.2f", 3.14159265) => Rounded to two decimal places: 3.14

#using format method helps us to limit displayed employee pay to 2 decimal places

#puts format ("The %s cost %i cents each.", "gumballs", 23)

#puts format ("That will be $%f please.", 0.23 * 5)

#first argument is a string that will be used to format the output- most of it is formatted exactly as it appears in the string. Any % are treadted as start of the format sequence- section of the string substituted with a value, remaining arguments are used as values for those format sequences.

#format sequence types: %s - string, %i - integer, %f - floating-point decimal

#puts format ("A string: %s", "hello")
#puts format ("An integer: %i", 15)
#puts format ("A float: %f", 3.1415) - for the float though it still shows too many decimal places

#format sequence width
#useful part of format sequence- let you specify the width of the resulting field - specify width after % in a format sequence

#puts format ("%12s | %s", "Product", "Cost in Cents")
#first field minimum of 12 characters, no minimum width for second field

#puts format ("%12s | %2i", "Paper Clips", 5)

#Use the format sequece widths to spcify the precision (the number of displayed digits) for floating-point numbers

# %4.3f
#% start of the format sequence. 4- minimum width of entire number .3 width after decimal point , f- format sequence type


#Exercise -Format Sequences
#$0.75
#0.00
#0.8
#0

#Debugging

# inspect & p methods can reveal information that doesn't show up in ordinary output
#puts & print methods automatically call to_s on an object to convert it to a string for printing

#"/" is a method - in Ruby most mathematical operators are implemented as methods e.g. 6 + 2 => a method call 6. + - is a method call- (2) - passed as an argument

#Fixnum & Float classes define these operator methods, NilClass does not
#puts nil./(365.0) => undefined method '/' for nil:NilClass- if you're doing mathematical operations with nil it's most likely because you forgot to assign a value to one of the operands. You want an error to be raised, to bring your attention to the problem.

#Ruby calls the initialize merhod on new objects after they're created

#Version 1
class Myclass

  def initialize
  puts "Setting up new instance!"
end

end

MyClass.new #=> Setting up new insance!

#Version 2
class Myclass

  def initialize(my_param)
  puts "Got a parameter from 'new': #{my_param}"
end

end

MyClass.new("hello") #=> Setting up new instance!

#DRY method = Don't Repeat Yourself

#Version 3
class Myclass

  def first_method
    puts "Current instance within first_method: #{self}"
    self.second_method
  end

  def second_method
    puts "Current instance within second_method: #{self}"
  end
end
#Within instance methods the keyword self refers to the current object

my_object = MyClass.new
#puts "my_object refers to this object: #{my_object}"
my_object.first_method


#can also use self with the dot operator to call a second instance
#Self keyword- has to be included when calling attribute writer methods, or Ruby will mistake the = for a variable assignment
#For any other kind of instance method call, you can leave self off
#If you don't specify a receieved using the dot operator, the receiver defaults to the current object, self
