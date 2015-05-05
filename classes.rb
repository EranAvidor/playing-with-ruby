#we define classes using the class key work
#classes' names are capitalized
class Car
	#Ruby lets you define setters and getters with the attribute properties system
	#attr_writer :engine_state	#creates a setter that allows car.engine_state = "some value"
	attr_reader :engine_state	#creates a getter that allows car.engine_state to be read
	#attr_accessor :engine_state	#creates a both setter and getter

	#the constructor method is a method that is executed whenever you instantiating a new Car object
	#in ruby you don't define class attributes explicitly. normally you identify them via the constructor
	#the attributes of an object call instance variables and they are defined with an @ symbol before the name of the variable
	#the initialize method is the objects' constructor and it is invoked implicitly when you create a new object instance with the 'new' method
	def initialize engine, tires
		@engine = engine
		@tires = tires
	end

	def start_engine
		@engine_state = "running"
		p "Car has started."	#p is a shorthand for puts
	end

	def stop_engine
		@engine_state = "stopped"
		p "Car as stopped."
	end
end

#car will be the object based on the Car class (blueprint like)
#arguments in Ruby are dynamic and they have no explicit type. lets say the the engine is a string and the tires is list
car = Car.new "My engine", [1, 2, 3, 4]

puts car 	#Returns <Car:0x007f977a2979d0> - class type name and the address in memory where the object is stored
puts car.inspect #Returns <Car:0x007f977a2979d0 @engine="My engine", @tires=[1, 2, 3, 4]>

car.start_engine
p "The current car's engine state is #{car.engine_state}"
car.stop_engine
p "The current car's engine state is #{car.engine_state}"