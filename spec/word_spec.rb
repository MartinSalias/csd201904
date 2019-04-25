
require "./lib/word.rb"

describe "Word" do
  it "Should return murcielago" do
    word = Word.new
    expect(word.get_word).to eq "murcielago"
  end
end
