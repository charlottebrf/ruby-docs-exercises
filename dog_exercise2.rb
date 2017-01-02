class Dog

  attr_reader :name, :age
  #creates methods to get current value of @name @age


  def name= (value)
    if value == ""
      raise "Name can't be blank!"
    end
    @name = value
  end

  def age= (value)
    if value < 0
      raise "An age of #{value} isn't valid!"
    end
    @age = value
  end
  #we create our own attribute writer nethods, so we can check that the new values are valid.

  def talk
    puts "#{@name} says Bark!"
  end

  def move (destination)
    puts "#{@name} runs to the #{destination}"
  end

  def report_age
    puts "#{@name} is #{@age} years old"
  end
#other instance methods for our Dog objects 

end

dog = Dog.new
dog.name = "Daisy"
dog.age = 3
dog.report_age
dog.talk
dog.move ("bed")
