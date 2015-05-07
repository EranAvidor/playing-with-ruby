#String class
#handles text
#strings are objects in ruby (like anything!)
#full documentation can be viewed in ruby-doc.org

#shows the methods available for strings
p "some strsing".methods

# multiplay a string
"Ho! " * 3 	#results in "Ho! Ho! Ho! "


# concatenate a string
"Hello" + " " + "World!" 	#results in "Hello World!"
"Hello" << " " << "World!" 	#results in "Hello World!"
"Hello".concat " World!" 	#results in "Hello World!"

#Upcase a string
"hello world".upcase 	#results in "HELLO WORLD"

#some methods have 2 versions, the regular version (upcase) and the "destructive" version (upcase!)
#The exclamation mark indicates, bu the Ruby convention, that the method will modify the object that is calling the method
name = "eran"
name.upcase 	#returns "ERAN" but name still holds "eran" since the value of the string remains unchanged
name.upcase! 	#returns "ERAN" and name now holds "ERAN"

#and also the downcase method (which also has its destructive version)
"HeLlO wOrLd".downcase 	#results in "hello world"

#matching a string to a pattern
#if we want to find patterns inside a string we use the =~ method (although it looks like an operator it is a method)
#the argument we pass to this method comes inside a slashed pipe //
"hello world" =~ /\d+/	#look for numbers inside the string - returns nil
"hello world" =~ /\w+/	#look for a word inside the string - returns 0 which is the index of the first match

#Capitalize a string (also has a destructive method)
"hello world!".capitalize 	#results in "Hello world!"

#the clear method is a destructive method by default
#it clears the content of the object
str = "to be cleared"
str.clear
str 	#results in ""

#check for a size of a string
"Hello World!".length
"Hello World!".size

#the count method allows to count for a certain kind a characters
"Hello World!".count 'l' 	#results in 3
"Hello World!".count "lo" 	#results in 5 (we have 3 'l's and 2 'o's)

#similarly the delete method will delete any character that's inside the set of characters in the argument
#it also has a destructive method
"Hello World!".delete "lo" #results in "He Wrd"

#there are different ways to define strings
#%q allows you to define strings where you can insert new lines with a little more elegance
str1 = %q{Multi line
String with
Several
Lines}	#results in "Multi line\nString with\nSeveral\nLines
#we can also manipulate the resulted string
str1.each_line { |line| p line} 	#results in printing each line (including the '\n' symbol in all the lines but the last)

#check if empty
"".empty? 	#results in true

#check if a string includes some other sub-string
"Hello World!".include? "orl" 	#results in true

#reverse (has a destructive version as well)
"String".reverse 	#results in "gnirtS"

#split by separator argument (can be a char or a string)
"a.b.c".split "." 	#results in the array ["a", "b", "c"]
"a.b.c".split ".b" 	#results in the array ["a", ".c"]