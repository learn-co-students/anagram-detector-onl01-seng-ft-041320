# Your code goes here!
class Anagram
    attr_accessor :word

    def initialize(word)
        @word = word
    end

    def search_word
        @word.split("").sort
    end

    def match(phrase)
        phrase.find_all { |word| word.split("").sort == self.search_word }
    end

end
