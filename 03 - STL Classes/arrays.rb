#Array class
#handles set of objects
#arrays are objects in ruby (like anything!)
#full documentation can be viewed in ruby-doc.org

#array is declared by squared brackets and this is how we normally instantiating an array
arr = [1, 2, 3, 4, 5, 6, 7, 8, 9] 	#results in [1, 2, 3, 4, 5, 6, 7, 8, 9]

arr.class 	#result in "Array"

#Ruby distinguishes arrays from hashes, the later is more like an associative array and will be talked about later in th course

#adding array wont merge common array items
[1, 2] + [2, 3] 	#results in [1, 2, 2, 3]

#another way to add items to an array is to append them with the << operator
#this operator append the addition as is to the end of the array
[1, 2] << 3 	#results in [1, 2, 3]
[1, 2] << [3] 	#results in [1, 2, [3]]
[1, 2] << [3, 4] 	#results in [1, 2, [3, 4]]
[1, 2] << 3 << 4 	#results in [1, 2, 3, 4]

#to add an item to the top of the list use the unshift method
[1, 2].unshift 3 	#results in [3, 1, 2]

#in order to strip away 'nil' values we use the compact method (has a destructive version)
[1, nil, 3, nil, 5].compact

#number of elements in array
[1, 2, 3, 4, 5].count 	#results in 5
[1, 2, 3, 4, 5].size 	#results in 5
[1, 2, 3, 4, 5].length 	#results in 5
[1, 2, [3, 4]].count 	#results in 3
#like in string the count method can take arguments
[1, 2, 2, 4].count(2) 	#results in 2

#retrieving an element out of bound
a = [1, 2, 3, 4]
a[5] 	#results in nil
a.fetch(5) 	#results in an exception "IndexError"

#check if include a certain value
a.include? 4 	#results in true
a.include? 6 	#results in false
[1, [3, 4]].include? 1 	#results in true
[1, [3, 4]].include? 3 	#results in false
[1, [3, 4]].include? [3, 4] 	#results in true

#%w allows you to define arrays where you can insert new lines with a little more elegance
%w(S t r i n g) 	#results in ["S", "t", "r", "i", "n", "g"]
%w(whole words) 	#["whole", "words"]
%w(S t r i n g).join "" 	#results in "String"

#we can use scalar multiply on arrays
%w(S t r i n g) * "" 	#results in "String"
%w(S t r i n g) * "-" 	#results in "S-t-r-i-n-g"

arr = [1, 2, 3, 4, 5]
arr.push 6 	#appends the value to the end of the list
arr 		#results in [1, 2, 3, 4, 5, 6]
arr.pop 	#returns the last element and pops it out
			#results in 6
arr 		#results in [1, 2, 3, 4, 5]
arr.pop 2 	#returns the last 2 elements and pops them out
			#results in [4, 5]
arr 		#results in [1, 2, 3]
arr.unshift 0 	#appends the value to the beginning of the 
arr 		#results in [0, 1, 2, 3]
arr.shift 	#returns the first element and removes it
			#results in 0
arr 		#results in [1, 2, 3]
arr.shift 2 	#returns the first 2 elements and removes them
				#results in [1, 2]
arr 		#results in [3]
#the unshift method takes a splat of items - the same goes with the push method
arr.unshift 0, 1, 2 	#results in [0, 1, 2, 3]
arr.push 4, 5, 6, 7 	#results in [0, 1, 2, 3, 4, 5, 6, 7]

#select and reject (filters out = excludes) are 2 methods that go through the items
#is_a? is a method of Object that returns the object type
[1, "a", 2, "b", 3, "c"].select { |item| item.is_a? String } 	#results with ["a", "b", "c"]
[1, "a", 2, "b", 3, "c"].reject { |item| item.is_a? String } 	#results with [1, 2, 3]
#the select/reject methods just simply go through the items!
[1, "a", 2, "b", 3, "c"].select { true } 	#results with [1, "a", 2, "b", 3, "c"]
[1, "a", 2, "b", 3, "c"].select { print "hi " } 	#results with "hi hi hi hi hi hi"
#The map method iterates through the list in more elegance way
[1, "a", 2, "b", 3, "c"].map { |item| item.class } 	#results with [Fixnum, String, Fixnum, String, Fixnum, String]
