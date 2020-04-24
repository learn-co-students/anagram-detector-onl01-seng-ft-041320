# Your code goes here!
class Anagram
  attr_accessor :anagram
  
  def initialize (word)  
    @anagram = word
  end
  def match (word_array)
    word_array.find_all do |word|
      word.split("").sort == @anagram.split("").sort
    end
  end
end