class Car

  def initialize (engine)
    @engine = engine
  end

  def rev_engine
    @engine.make_sound
  end

  class Engine

  def initialize (sound = "Vroom!")
    @sound = sound
  end

  def make_sound
    puts @sound
  end

end

engine = Engine.new
car = Car.new(engine)
car.rev_engine

#The new method is needed to actually create the object; initialize just sets up the new instance variables
