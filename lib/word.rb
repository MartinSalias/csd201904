class Word
  def initialize
    @word = "murcielago"
  end

  def get_word
    return @word
  end

  def letter_is_present letter
    return @word.include? letter
  end
end
