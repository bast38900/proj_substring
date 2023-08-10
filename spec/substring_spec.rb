require './lib/substrings'  #=> Method to be tested

describe Word_Counter do # The class
  # dictionary
  dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

  describe "#substrings" do # The method
    it "return a hash listing each substring (case insensitive)" do # The test
        word_counter = Word_Counter.new
        expect(word_counter.substrings('below', dictionary)).to eql({'below' => 1, 'low' => 1})
    end

    it "method can handle multiple words" do # The test
      word_counter = Word_Counter.new
      sentence = "Howdy partner, sit down! How's it going?"

      result = { "down" => 1, "go" => 1, "going" => 1,
                 "how" => 2, "howdy" => 1, "it" => 2, 
                 "i" => 3, "own" => 1, "part" => 1, 
                 "partner" => 1, "sit" => 1 }
                 
      expect(word_counter.substrings(sentence, dictionary)).to eql(result)
    
    end    
  end
end