#initialize method makes it easy to create new Employee instances
#Only handles salaried employees, create a programme for employees who are paid hourly

#requirements for hourly employeess- need name & print name
#difference in way we calculate their pay

#Employee: name, print_name
#SalariedEmployee: salary, print_pay_stub => print name & 2 weeks worth of salary
#HourlyEmployee: hourly_wage, hours_per_week, print_pay_stub => print name & 2 weeks of hourly wages

class Employee

  attr_reader :name

  def name= (name)
    # Code to validate & set @name
  end

  def initialize(name = "Anonymous")
    self.name = name
  end

  def print_name
    puts "Name: #{name}" #the same as a call to self.name
  end

end


class SalariedEmployee < Employee

  attr_reader :salary

  def salary= (salary)
    # Code to validate & set @salary
  end

  def initialize (name = "Anonymous", salary = 0.0)
    super(name)
    #self.name = name
    self.salary = salary
  end

  def print_pay_stub
    print_name
    pay_for_period = (salary / 365.0) * 14
    formatted_pay = format("$%.2f", pay_for_period)
    puts "Pay This Period: #{formatted_pay}"
  end

end

salaried_employee = SalariedEmployee.new("Jane Doe", 50000)
salaried_employee.print_pay_stub
#create a new SalariedEmployee instance -without initialize

#salaried_employee = SalariedEmployee.new
#salaried_employee.name = "Jane Doe"
#salaried_employee.salary = 50000
#salaried_employee.print_pay_stub

#=> Name: Jane Doe, Pay This Period: $1917.81


class HourlyEmployee < Employee

  attr_reader :hourly_wage, :hours_per_week

  def hourly_wage= (hourly_wage)
    #Code to validate & set @hourly_wage
  end

  def hours_per_week= (hours_per_week)
    #Code to validate & set @hours_per_week
  end

  def initialize (name = "Anonymous", hourly_wage = 0.0, hours_per_week = 0.0)
    super (name)
    #self.name = name
    self.hourly_wage = hourly_wage
    self.hours_per_week = hours_per_week
  end

  def print_pay_stub
    print_name
    pay_for_period = hourly_wage * hours_per_week * 2
    formatted_pay = format ("$%.2f", pay_for_period)
    puts "Pay This Period: #{formatted_pay}"
  end

end

hourly_wage = HourlyEmployee.new("John Smith", 14.97, 30)
hourly_employee.print_pay_stub

#create a new HourlyEmployee instance without initialize

#hourly_employee = HourlyEmployee.new
#hourly_employee.name = "John Smith"
#hourly_employee.hourly_wage = 14.97
#hourly_employee.hours_per_week = 30
#hourly_employee.print_pay_stub

#need to restore initialize methods


#There is duplication in the initialize methods- instead of duplication can add the initialize method to the super class
#previously used super in the print_pay_stub methods now done the same thing with the initialize method. This works because initialize in an instance method just like any other. Any feature that can be used with an ordinary instance method, can also be used with initialize.
