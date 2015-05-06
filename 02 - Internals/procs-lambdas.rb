#procs and lambdas are essentially Ruby blocks but instead of declaring them anonymously you assign them to variables
#the main difference between a proc and a lambda is that lambda needs all the arguments to be passed correctly whereas proc object is not

def form_with_proc proc
	puts "<form>"
	proc.call	#if we pass true here the paragraph wont be printed
				#if we pass false or nil then the paragraph will be printed
	puts "</form>"
end

def form_with_lambda lambda
	puts "<form>"
	lambda.call	true	#here we have to pass an argument
	puts "</form>"
end

def paragraph text
	puts "<p>" + text + "</p>"
end

def quote text
	puts "<blackquote>" + text + "</blackquote>"
end


#work your magic

#proc can be created using:
#myproc = Proc.new do
#myproc = -> do #normally used with 1-line block using curly braces {}
myproc = proc do |only_quotes|	#parameters can be passed to procs using the pipelines
	paragraph "This is a paragraph" unless only_quotes		
	quote "This is a quote"	
end

form_with_proc myproc

mylambda = lambda do |only_quotes|	#parameters can be passed to lambdas using the pipelines
	paragraph "This is a paragraph" unless only_quotes		
	quote "This is a quote"	
end

form_with_lambda mylambda