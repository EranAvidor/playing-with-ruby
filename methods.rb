# encoding: utf-8
#lets Ruby parses special characters correctly

class Post
	attr_reader :author, :title, :body, :comments
	
	#Using the explicit parameters options
	#def initialize author, title, body, comments = []	#setting a default value for the comments parameter to be an empty list
	#	@author = author
	#	@title = title
	#	@body = body
	#	@comments = comments	
	#end

	#Using Hash
	def initialize options
		@author = options[:author]
		@title = options[:title]
		@body = options[:body]
		@comments = options[:comments] || [] 	#setting default value inside the method
	end

	#A splat groups several parameters passed to the method. 
	#This means that we can call as many arguments as we need to this method
	#You can have only one splat in the entire method signature
	#you can define "def my_method first, second, *splat, options_hash, &block, last"
	def insert_comment *comments
		comments.each {|c| @comments << c }
	end
end

class Comment
	attr_reader :user, :body

	def initialize options
		@user = options[:user]
		@body = options[:body]
	end
end

#postWithNoCommentDefinition = Post.new "Eran Avidor", "My first post", "My post is awesome"
postWithNoCommentDefinition = Post.new author: 	"Eran Avidor",
									   title: 	"My first post",
									   body: 	"My post is awesome"

#post = Post.new "Eran Avidor", "My first post", "My post is awesome", []
post = Post.new author: "Eran Avidor",
				title: 	"My first post",
				body: 	"My post is awesome",
				comments: []


post.insert_comment Comment.new( { user: "Jeffrey Way",
								   body: "Nice post."	} ),
					Comment.new( { user: "Dan Alison",
								   body: "Thanks. Bookmarked!"	} )

p post.inspect

##################################################################################
#besides defining splats in a methods arguments you can invoke methods using splats
def my_method *list
	p list.inspect
end

my_method 1, 2, 3, 4, 5			#prints [1, 2, 3, 4, 5] - a list with 5 elements

my_method [1, 2]				#prints [[1, 2]] - a list with 1 element which is a list

my_method *[1, 2]				#prints [1, 2] - a list with 2 elements because the * squashed it down 

my_method [1, 2], 3, [4, 5]		#prints [[1, 2], 3, [4, 5]] - a list with 3 elements which 2 of them are lists

my_method *[1, 2], 3, *[4, 5]	#prints [1, 2, 3, 4, 5] - a list with 5 elements because the * squashed it down 