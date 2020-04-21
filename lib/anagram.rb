class Anagram
  attr_accessor :word

  def initialize(word)
    @word = word
  end

  def match (array)
    matches = []
    word_array = word.split("")
    array.each do |some_word|
      temp_array = some_word.split("")
      if temp_array.sort == word_array.sort
        matches << some_word
      end
    end
    matches
  end

end
