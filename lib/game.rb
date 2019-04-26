require './lib/word.rb'

class Game
  def initialize word = ""
    @word = Word.new
    @word.set_word(word)
    @max_errors = 7
    @game_over = false
  end

  def error_count
    return @word.incorrect_letters.length
  end

  def word
    return @word.get_word
  end

  def letter_result
    # It's the first round
    if defined? @letter_result
      return @letter_result? 'Encontrada' : 'No encontrada'
    else
      return ''
    end
  end

  def result
    return @result
  end

  def wrong_letters
    return @word.incorrect_letters.reverse.join(' ')
  end

  def word_letters_found
    return @word.word_letters_found.join(' ')
  end

  def error_message
    return @error_message
  end

  def round letter
    @letter_result = @word.letter_is_present(letter);
    status = status()

    if (status == 'lost')
      @result = '¡Has perdido!'
      @error_message = "¡Llevas #{error_count.to_s} error!"
    elsif (status == 'win')
      @result = '¡Ganaste, felicitaciones!'
    else
      @result = 'Jugando'
      @error_message = "¡Llevas #{error_count.to_s} error!"

      #@TODO update the template to deal with the 'Jugando' situation
    end
  end

  def status
    if (error_count >= @max_errors)
      return 'lost'
    elsif (@word.word_was_found)
      return 'win'
    else
      return 'in progress'
    end
  end

end
