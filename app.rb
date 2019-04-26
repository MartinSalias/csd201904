require 'sinatra'
require './lib/game.rb'
require './lib/word.rb'

get '/' do
  @@game = Game.new

  erb :form
end

post '/' do
  @letter = params[:campo]
  @@game.round(@letter)

  erb :form
end
