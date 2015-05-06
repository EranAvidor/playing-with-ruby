#blocks are a nice way to encapsulate groups of behavior in a very flexible way

#here we define a form method that receives a block and creates an HTML form with it
def form &block
	puts "<form>"
	yield if block_given?	#yield does the block content
							#if block_given? lets us invoke the form without giving it a block
	puts "</form>"
end

def paragraph text
	puts "<p>" + text + "</p>"
end

def quote text
	puts "<blackquote>" + text + "</blackquote>"
end


#work your magic

form do 
	paragraph "This is a paragraph"
	quote "This is a quote"	
end

form