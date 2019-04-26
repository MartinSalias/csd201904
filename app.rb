require 'sinatra'
require './lib/word.rb'

get '/' do
  @endgame = ""
  @@word = Word.new
  @found = @@word.word_letters_found.join(" ")
  erb :form
end

post '/' do
  @letter = params[:campo]
  @result = @@word.letter_is_present(@letter) ? "Encontrada" :  "No encontrada"

  @cont_errors = @@word.incorrect_letters.length
  @found = @@word.word_letters_found.join(" ")
  @errors = ""
  @endgame = ""

  if @cont_errors < 7  
    @word = @@word.word_was_found ? @@word.get_word : ""

    if @cont_errors > 0
      @bad_letters = @@word.incorrect_letters.reverse.join(" ")
      @errors = "¡Llevas " + @cont_errors.to_s + ((@cont_errors  == 1) ? " error" : " errores") + "!"
    end

    if @word != ""
      @endgame = "¡Ganaste, felicitaciones!"
    end
  else
    @endgame = "¡Has perdido!"
    @result = ""
  end

  erb :form
end
