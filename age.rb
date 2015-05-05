#1. ask for age
puts "Enter an age:"
age = gets.to_i


#2. process
output = if age < 10
	       "It's a young person."
	     elsif age < 19
           "It's a teenager."
		 elsif age < 55
		   "It's an adult."
		 elsif age < 100
		   "It's an old person."
	 	 else
	 	   "Is he dead?"
		 end

#variable = age < 55 ? "young" : "old"

#doSomething if condition == true		<=>		doSomething if condition
	# "hi" if 5<8 - returns "hi"
#doSomething unless condition == false	<=>		doSomething unless condition
	# "hi" unless 5>8 - returns "hi"

#3. output
puts output