

# Explorer Mode
class Robot

  def initialize(name, height=10)
    @name = name
  end

  def say_hi
    "Hi!"
  end

  def say_name
    "My name is #{@name}"
  end

end

rob = Robot.new("Rob")




class BendingUnit < Robot

  def bend(object_to_bend)
    puts "Bend #{object_to_bend}!"
  end

end

bender = BendingUnit.new("flexo")




class ActorUnit < Robot

  def change_name(newname)
    @name = newname
    puts "Your new name is #{@name}!"
  end

end

calc = ActorUnit.new("Calc")
puts calc.change_name("Balculon")



# Adventure Mode
our_class = ["Kalea", "Nancy", "David", "Ron", "Laura", "Dave", "Demtra", "Kendrick", "Phil", "Ben", "Michael", "Miguel"]

robot_class = our_class.collect { |student| Robot.new(student) }
puts robot_class



# Epic Mode

random_robot_class = our_class.collect { |student| [Robot, BendingUnit, ActorUnit].sample.new(student) }
puts random_robot_class


# Randomly assign the class of the robot on creation.
