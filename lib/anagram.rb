class Anagram

    attr_accessor :word

    def initialize(word)
        @word = word
    end

    def match(array)
        #It should return all matches in an array. If no matches exist it should return empty []
        # 1) iterate over the array of words
        # 2) compare each word of that array to the word that the Anagram class is initialized with
        # 3) Determine if they are anagrams, try determining if they are composed of the same letters
        array.select do |w|
            (@word.split("").sort) == ((w.split("")).sort)
        end
    end


end
