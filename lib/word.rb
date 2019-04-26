class Word
  def initialize
    
    @lift_words= ["murcielago","conducta","gente","juvenil","tronco"];
    @word =""    
    @word_list = @word.split ""
    @correct_letters = []
    @incorrect_letters = []
    @word_letters_found = []
    set_word
  end

  def set_word word=""
    if word.empty? 
      count = @lift_words.length
      aleat = rand(count)
      @word =@lift_words[aleat]
    else
      @word = word
    end
    
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
