require_relative "exceptions-blog"
require_relative "exceptions-tweetable"

post = Blog::Post.new author: 	"Eran Avidor",
					  title: 	"Post Title",
					  body: 	nil

#extending the post functionality since we didn't include it in the Post class
post.extend Tweetable

#here we should get a Tweetable::NoBodyError since we pass the body as nil
#in order to continue the code flow we need to wrap the problematic code with some "try-catch style" code
begin
	post.tweet
rescue Tweetable::NoBodyError => details	#the parameter is optional
											#without a parameter it will catch any exception whatsoever
											#the hash rocket lets us access the details of the exception
	#when you rescue on exception you can do something about it and still re-raise it again and send it to the method that was called this one
	p "No Body was in the post, tweet could not be sent."
	p "Error: #{details.message}"
	#raise 	#re-raising the error
ensure
	p "This code will be executed regardless to the existence of an error"
end


p post.inspect