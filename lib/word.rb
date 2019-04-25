class Word
  def initialize
    @word = "murcielago"
    @correct_letter = []
  end

  def get_word
    return @word
  end

  def letter_is_present letter
    letter = letter.downcase

    if (@word.include? letter)
      @correct_letter.push letter
      return true
    else
      return false
    end
  end

  def correct_letters
    return @correct_letter
  end
end
