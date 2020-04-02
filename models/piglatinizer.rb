
class PigLatinizer
    attr_reader :text

    def initialize(text)
        @text = text
    end

    def piglatinizer
        sentence = @text.split(" ")
        sentence_changed = sentence
        vowels = ["a", "e", "i", "o", "u", "y"]
        x = 0
        while x < sentence.length do
            i = 0
            # x=0
            while !vowels.include?(sentence[x][i]) do 
              #noodle consonant = n
                consonant = sentence[x][i]
                sentence[x][i] = ''
                sentence[x] += consonant
            end
            x += 1
        end
        sentence_changed = sentence.map{|sentence| 
        if vowels.include?(sentence[0])
            sentence += "way"
        else
            sentence += "ay"
        end
        }
        sentence_changed.join(" ")
    end
   
end

