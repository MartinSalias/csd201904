require 'sinatra'
require './lib/word.rb'

get '/' do  
  erb :form
end

post '/buscar' do
  word = Word.new
  @letter = params[:campo]
  @result = word.letter_is_present(@letter) ? "Encontrada" :  "No encontrada"

  erb :form
end
