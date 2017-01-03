class Boat

  def initialize (name)
    @name
  end

class PowerBoat < boat

  def initialize (name, motor_type)
    super (name)
    @motor_type = motor_type
  end

  def info
    puts "Name: #{@name}"
    puts "Motor Type: #{@motor_type}"
  end

end


#sample code
#boat = PowerBoat.new("Guppy", "outboard")
#boat.info


#what we know: boat name, motor type type -instance variables

#what we do: print name, print boat type  -instance methods
