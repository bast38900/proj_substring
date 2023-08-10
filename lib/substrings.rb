# Implement a method #substrings that takes a word as the first argument and then an array of valid substrings (your dictionary) as the second argument. 
# It should return a hash listing each substring (case insensitive) that was found in the original string and how many times it was found.

class Word_Counter
    
    def substrings(sentence, dictionary)
      
        sentence = sentence.downcase
        result = Hash.new(0)
    
        dictionary.each do |word|
            if sentence.include?(word)
                result[word] = sentence.scan(word).count
            end
        end
        result
    end

end