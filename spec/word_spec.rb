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

    it "Should add the letter passed as a parameter to the @correct_letter array if it's present in the word" do
      word = Word.new
      word.letter_is_present('m')
      expect(word.correct_letters).to eq ['m']
    end

    it "Should not add duplicate letters to the @correct_letter array" do
      word = Word.new
      word.letter_is_present('m')
      word.letter_is_present('m')
      expect(word.correct_letters).to eq ['m']
    end

    it "Should add the letter passed as a parameter to the @incorrect_letter array if it's not present in the word" do
      word = Word.new
      word.letter_is_present('x')
      expect(word.incorrect_letters).to eq ['x']
    end

    it "Should not add duplicate letters to the @incorrect_letter array" do
      word = Word.new
      word.letter_is_present('x')
      word.letter_is_present('x')
      expect(word.incorrect_letters).to eq ['x']
    end

    it "Should exist only 1 element in the @incorrect_letter array" do
      word = Word.new
      word.letter_is_present('m')
      word.letter_is_present('f')
      expect(word.incorrect_letters.length).to eq 1
    end
  end

  describe "When word_was_found is called" do
    it "Should return true if the word was found" do
      word = Word.new
      word.letter_is_present('m');
      word.letter_is_present('u');
      word.letter_is_present('r');
      word.letter_is_present('c');
      word.letter_is_present('i');
      word.letter_is_present('e');
      word.letter_is_present('l');
      word.letter_is_present('a');
      word.letter_is_present('g');
      word.letter_is_present('o');
      expect(word.word_was_found).to eq true
    end
  end
end
