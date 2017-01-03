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

  def print_pay_stub
    puts "Name: #{@name}"
    pay_for_period = (@salary / 365) * 14
    puts "Pay This Period: $#{pay_for_period}"
  end
  #instance method

end

#Now employee class is defined, able to create new instances & assign their name & salary attributes

amy = Employee.new
amy.name = "Amy Blake"
amy.salary = 50000
amy.print_pay_stub

#validation code ensure no blank assignments & negative numbers

#Two bugs to fix:
#1. Employee pay is getting its decimal places chopped off. Need to look at difference between Ruby's Float & Fixnum numeric classes
#2. We don't want to display too many decimal places, so need to look at the format method to forma numbers properly 
