class Word
  def initialize
    @word = "murcielago"
    @word_list = @word.split ""
    @correct_letters = []
    @incorrect_letters = []
  end

  def get_word
    return @word
  end

  def correct_letters
    return @correct_letters
  end

  def incorrect_letters
    return @incorrect_letters
  end

  def letter_is_present letter
    letter = letter.downcase

    if (@word.include? letter)
      if (!@correct_letters.include? letter)
        @correct_letters.push letter
      end

      return true
    else
      if (!@incorrect_letters.include? letter)
        @incorrect_letters.push letter
      end

      return false
    end
  end

  def word_was_found
    return (@word_list - @correct_letters).empty?
  end
end
