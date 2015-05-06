
#3 proc objects that receives a string
#each one of these blocks will return a boolean that indicates if str is inside the list
fruit 	  = ->(str) { ["banana", "apple", "grape"].include? str }
vegetable = ->(str) { ["potato", "carrot", "turnip"].include? str }
meat	  = ->(str) { ["pork", "chicken"].include? str }

#note that we pass the when argument to be a proc object
["potato", "apple", "chicken", "mackarel"].each do |food|
	case food
	#internally ruby invokes fruit === food
	when fruit
		puts food + " is a fruit."
	when vegetable
		puts food + " is a vegetable."
	when meat
		puts food + " is a meat."
	else
		puts "I don't know what " + food + " is."
	end
end
#so rather than using simple expressions such as strings or integers, this way we can pass entire functionality through proc objects in case statements