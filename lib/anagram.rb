require 'pry'
class Anagram
  def initialize(input)
    @input = input.split('').sort
  end

  def match(potential_anagrams)
    potential_anagrams.select {|word| word.split('').sort == @input}
  end
end