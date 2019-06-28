class Anagram
  attr_accessor :word
  def initialize(word)
    @word=word
  end
  def match(possible_anagrams)
    possible_anagrams.select {|possibility|
      possibility.chars.sort.join == @word.chars.sort.join
    }
  end
end
