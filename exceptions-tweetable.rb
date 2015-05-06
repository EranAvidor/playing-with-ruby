#just like anything else in Ruby, exceptions are classes and you can also create your own
#an exception includes: 1. The error	2. A custom message (if declared) 	3.The stack trace
#Common errors: - ZeroDivisionError
#				- NameError (call to undefined method or variable)
#				- ArgumentError (wrong number of arguments)

#we want to add an exception for the case where the calling object doesn't have the body attribute
module Tweetable
	#we create our specific error that inherits directly from StandardError
	class NoBodyError < StandardError; end

	def tweet
		raise NoBodyError, "Object has no body, please fix this! (NoBodyError message content)" if @body.nil?
		puts "Tweeted the following: #{body}"
	end
end