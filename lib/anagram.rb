# Your code goes here!
class Anagram
	attr_accessor :word

	def initialize(word)
		@word = word
	end

	def match(words)
		anagram = []
		
		words.collect do |word|
			word_one = word.split("")
			word_two = @word.split("")

			anagram << word if word_one.sort == word_two.sort
		end
		anagram
	end

end