#we define modules using the module key work
#modules' names are capitalized
#module can be in multiple files

#we use the Mixin mechanism here
require_relative "modules-tweetable"

module Blog
	class Post
		#inside the class we need to include the module we created for the Mixin
		#we get a Tweetable module mixed in the Post class
		include Tweetable

		attr_reader :author, :title, :body, :comments
		 
		def initialize options
			@author = options[:author]
			@title = options[:title]
			@body = options[:body]
			@comments = options[:comments] || []
		end

		def insert_comment *comments
			comments.each {|c| @comments << c }
		end

		#inside the module it's the programmer's choice whether to explicitly declare the module name or not 
		def insert_static_comment
			@comments << Comment.new(user: "Static user", body: "A static comment body")
		end
	end

	class Comment
		include Tweetable
		attr_reader :user, :body

		def initialize options
			@user = options[:user]
			@body = options[:body]
		end
	end
end