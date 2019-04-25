
require "./lib/word.rb"

describe "Word" do
  it "Should return murcielago" do
    word = Word.new
    expect(word.get_word).to eq "murcielago"
  end

  it "Should return true if the letter passed as an argument is present in the word" do
    word = Word.new
    expect(word.letter_is_present('m')).to eq true
  end

  it "Should return false if the letter passed as an argument is not present in the word" do
    word = Word.new
    expect(word.letter_is_present('x')).to eq false
  end
end
