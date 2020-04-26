# Your code goes here!
require "pry"
class Anagram
  attr_accessor :possible_anagram

  def initialize(anagram_input="")
    @anagram_possibility = anagram_input

  end

  def possible_anagram
    @anagram_possibility
  end

  def possible_anagram=(input)
    @anagram_possibility = input
  end

  def match(anagrams)
    # binding.pry
    anagrams.select{|a| a.split("").sort == possible_anagram.split("").sort}
  end
end

# simple_anagram = Anagram.new("ba")
# simple_anagram.match(%w("ha" "ba" "bugger" "nope"))
