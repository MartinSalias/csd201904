class Word
  def initialize word = ""
    @correct_letters = []
    @incorrect_letters = []
    @word_letters_found = []
    @words_pool = ["murcielago", "conducta", "gente", "juvenil", "tronco"]
    set_word(word)
  end

  def set_word word
    if word.empty?
      @word = @words_pool.sample
    else
      @word = word
    end
    
    @word_list = @word.split("")
    @word_letters_found = @word.gsub(/\S/, '_').split("")
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
  
  def refresh_word_letters_found letter
    @word.split("").each_with_index do |character, position|
      if character == letter
        @word_letters_found[position] = letter
      end
    end
  end

  def letter_is_present letter
    letter = letter.downcase

    if (@word.include? letter)
      if (!@correct_letters.include? letter)
        @correct_letters.push letter
        refresh_word_letters_found letter
      end

      return true
    else
      if (!@incorrect_letters.include? letter)
        @incorrect_letters.push letter
      end

      return false
    end
  end
  
  def word_letters_found
    return @word_letters_found
  end

  def word_was_found
    return (@word_list - @correct_letters).empty?
  end
end
