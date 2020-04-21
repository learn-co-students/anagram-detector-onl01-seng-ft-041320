# Your code goes here!
require 'pry'

class Anagram
    # instance vars
    attr_accessor :word

    def initialize(word)
        @word = word
    end

    def match(sentence)
        # sentence is already split into an array of words
        comparison_letters = @word.split('')
        anagrams = []

        
        sentence.each do |word|
            split_word = word.split('')
            if split_word.size == comparison_letters.size
                is_anagram = true
                temp_letters = comparison_letters.dup
                split_word.each do |letter|
                    if !temp_letters.include?(letter)
                        is_anagram = false
                        break
                    else
                        remove_index = temp_letters.index(letter)
                        temp_letters.delete_at(remove_index)
                        
                    end
                end

                if is_anagram
                    anagrams << word
                end
            end
            
        end

        anagrams
    end
end