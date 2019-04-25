require 'sinatra'
require './lib/word.rb'

get '/' do
  @@word = Word.new
  erb :form
end

post '/buscar' do
  @letter = params[:campo]
  @result = @@word.letter_is_present(@letter) ? "Encontrada" :  "No encontrada"
  @word = @@word.word_was_found ? @@word.get_word : ""

  erb :form
end
