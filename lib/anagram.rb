class Anagram
  attr_accessor :word 
  def initialize word 
    @word = word
  end 
  
  def match(word_array)
    word_array.find_all do |word|
      if word.chars.sort.join == @word.chars.sort.join
      word
      end
    end 
  end 
end