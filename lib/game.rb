require 'word.rb'

class Game
  def initialize word = ""
    @word = Word.new
    @word.set_word(word)
    @max_errors = 7
    @game_over = false
    round("")
  end

  def error_count
    return @word.incorrect_letters.length
  end

  def word
    return @word.get_word
  end

  def letter_result
    return @letter_result? 'Encontrada' : 'No encontrada'
  end

  def result
    return @result
  end

  def wrong_letters
    return @word.incorrect_letters.reverse.join('')
  end

  def error_message
    return @error_message
  end

  def round letter
    if (!letter.empty?)
      @letter_result = @word.letter_is_present(letter);
      status = status()

      if (status == 'lost')
        @result = 'Has perdido'
        #@TODO remove the HTML element that displays "Encontrada" / "No encontrada"
      elsif (status == 'win')
        @result = '¡Ganaste, felicitaciones!'
      else
        @result = 'Jugando'
        @error_message = "¡Llevas #{error_count.to_s} error(es)!"

        #@TODO update the template to deal with the 'Jugando' situation
      end
    else
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
