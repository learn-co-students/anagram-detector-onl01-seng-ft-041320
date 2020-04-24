# Your code goes here!

class Anagram
    attr_accessor :word

    def initialize(word)
        @word = word
    end

    def match(array)
        array.select do |check|
            check.split("").sort == @word.split("").sort
    end
 end
end


