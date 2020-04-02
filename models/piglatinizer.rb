
class PigLatinizer 
    attr_reader :text

    def initialize(text)
        @text = text
    end

    def piglatinizer
        sentence = @text.split(" ")
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
        sentence = sentence.map{|sentence| sentence += "ay"}
        sentence.join(" ")
    end
   
end

pl = PigLatinizer.new("orangebud blama")
pl.piglatinizer