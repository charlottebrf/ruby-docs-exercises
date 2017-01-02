class Robot

  attr_accessor :name

  def activate
    puts "#{@name} is powering up"
  end

  #Hugo is powering up

  def move (destination)
    puts "#{@name} walks to #{destination}"
  end

#Hugo walks to test dummy
end

#sample code
tank = TankBot.new
tank.name = "Hugo"
tank.weapon = "laser"
tank.activate
tank.move ("test dummy")
tank.attack

class TankBot < Robot

  attr_accessor :weapon

  def attack
    puts "#{@name} fires #{@weapon}"
  end
#Hugo fires laser

  def move (destination)
    puts "#{@name} rolls to #{destination}"
  end
#Hugo rolls to test dummy

end

class SolarBot < Robot

  def activate
    puts "#{@name} deploys solar panel"
    super
  end

  end
#Sunny deploys solar panel
#Sunny is powering up
#Sunny walks to tanning bed


sunny = SolarBot.new
sunny.name = "Sunny"
sunny.activate
sunny.move("tanning bed")
