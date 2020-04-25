require "pry"
# Your code goes here!
class Anagram

  attr_accessor :word

  def initialize(word)
    @word = word
  end

  def match(possible_anagrams)
    anagrams = []
    possible_anagrams.each do |anagram|
      anagrams.push(anagram) if word.split("").sort == anagram.split("").sort
    end
    anagrams
  end
end
