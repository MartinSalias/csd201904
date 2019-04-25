require "./lib/word.rb"

describe "Word" do
  describe "When get_word is called" do
    it "Should return murcielago" do
      word = Word.new
      expect(word.get_word).to eq "murcielago"
    end
  end

  describe "When letter_is_present is called" do
    it "Should return true if the letter passed as an argument is present in the word" do
      word = Word.new
      expect(word.letter_is_present('m')).to eq true
    end

    it "Should return false if the letter passed as an argument is not present in the word" do
      word = Word.new
      expect(word.letter_is_present('x')).to eq false
    end

    it "Should be case insensitve" do
      word = Word.new
      expect(word.letter_is_present('M')).to eq true
    end

    it "Should add the letter passed as a parameter to the @correct_letter array" do
      word = Word.new
      word.letter_is_present('m')
      expect(word.correct_letters).to eq ['m']
    end
  end

end
