require 'pry'
class Anagram

    def initialize(text)
    @text = text
    end

    # def options

    # end

    def single_match(werd)
        real_letters = @text.split('')
        werd_letters = werd.split('')
        i=0
        while real_letters.include?(werd_letters[i]) do 
            real_letters.delete(werd_letters[i])
            werd_letters.delete(werd_letters[i])
        end
        if real_letters == [] && werd_letters == []
            return true
        end
    end


    def match(werds)
        found = werds.select {|w| single_match(w)==true} 
        found.select {|a| a.length == @text.length}
    end

end