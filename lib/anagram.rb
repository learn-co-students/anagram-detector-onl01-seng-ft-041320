class Anagram

  attr_accessor :word

  def initialize(word)
    @word = word
  end

  def match(array)
    solution = []
     array.map do |ele|
      if ele.length == @word.length
            test1 = ele.split('').sort
            test2 = @word.split('').sort
            if (test1 == test2)
              solution << ele
            end
        end
      end
       return solution
    end
end
