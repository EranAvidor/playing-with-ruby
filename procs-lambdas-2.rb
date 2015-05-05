def run_block block
	print "Running a "
	block.call
	puts "... done. \n"
end

def app
	run_block lambda { print "lambda"; return }
	run_block proc { print "proc"; return }
	#when a proc object has a return statement inside the scoop in witch it returns is the one where it is defined
	#as for the lambda the return scoop is inside itself, so it simply returns and continues the normal work flow
	#the code in line 4 for the block execution wont be executed and will break the app work flow. it will continue to the goodbye message
end

app

puts "\nThanks for testing my code."