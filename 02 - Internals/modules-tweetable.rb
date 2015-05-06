#This module can be re-used wherever we need as long as the calling object has the body attribute
#It is called the Mixin mechanism

module Tweetable
	def tweet
		puts "Tweeted the following: #{body}"
	end
end