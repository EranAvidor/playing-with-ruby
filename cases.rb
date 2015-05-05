#using case when - switch case statement

print "Tell me a car model: "
car_model = gets.strip #strip removes any spaces from the beginning and the end of string

output = case car_model
			when "Focus", "Fieasta" then "Ford"
			when "Ibiza" then "Seat"
			when "Civic" then "Honda"
			else "Unknown model"	#else is optional and is a sort of a back-fall
			end

print "The car company for #{car_model} is ", output
puts