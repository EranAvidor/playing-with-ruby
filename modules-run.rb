#require_relative will load Ruby files with the name based on the string we relative
require_relative "modules-blog" 	#the file extension is optional
require_relative "modules-tweetable" 	#for the extend command

p Blog

#note that we have to explicitly declare the module name
post = Blog::Post.new author: 	"An author",
					  title: 	"A title",
					  body: 	"A body",
					  comments: Blog::Comment.new(user: "A commenter", body: "Comment content")

#post.insert_comment Blog::Comment.new(user: "A commenter", body: "Comment content")

#post.insert_static_comment

p post

#note that tweet isn't part of the Post class but it is a mixed in module with this functionality
post.tweet
#as you can see, we can include functionality that can be isolated in scoop, extracted into module and then you can include them in several other classes

#post.comments.each { |c| c.tweet }
post.comments.tweet

#we can also extend an object's functionality dynamically
post.extend Tweetable #This adds the Tweetable functionality to the very specific post object (not all Post instances)