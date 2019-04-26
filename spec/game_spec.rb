require './lib/game.rb'

describe "Game" do
  it "Should set a word" do
    game = Game.new('papas')
    expect(game.word.is_a? String).to eq true
  end

  describe "When letter_result() is called" do
    it "Should return 'Encontrada' if the letter was found" do
      game = Game.new('papas')
      game.round('p')
      expect(game.letter_result).to eq 'Encontrada'
    end

    it "Should return 'No encontrada' if the letter was found" do
      game = Game.new('papas')
      game.round('x')
      expect(game.letter_result).to eq 'No encontrada'
    end
  end

  describe "When status() is called" do
    it "Should return 'lost' if the user tried incorrect letters too many times" do
      game = Game.new('papas')
      game.round('n')
      game.round('x')
      game.round('o')
      game.round('q')
      game.round('t')
      game.round('r')
      game.round('w')
      expect(game.status).to eq 'lost'
    end

    it "Should return 'win' if the user got the correct letters" do
      game = Game.new('papas')
      game.round('p')
      game.round('a')
      game.round('s')
      expect(game.status).to eq 'win'
    end

    it "Should return 'in progress' if the user got the correct letters" do
      game = Game.new('papas')
      game.round('p')
      game.round('a')
      expect(game.status).to eq 'in progress'
    end
  end

 describe "When result() is called" do
  it "Should return 'Has perdido' if the game is over and the user lost" do
    game = Game.new('papas')
      game.round('n')
      game.round('x')
      game.round('o')
      game.round('q')
      game.round('t')
      game.round('r')
      game.round('w')
      expect(game.result).to eq 'Has perdido'
  end

  it "Should return '¡Ganaste, felicitaciones!' if the game is over and the user won" do
    game = Game.new('papas')
      game.round('p')
      game.round('a')
      game.round('s')
      expect(game.result).to eq '¡Ganaste, felicitaciones!'
  end

  it "Should return 'Jugando' if the game is in progress" do
    game = Game.new('papas')
      game.round('p')
      game.round('a')
      expect(game.result).to eq 'Jugando'
  end
 end

 describe "When wrong_letters() is called" do
  it "Should return the incorrect_letters array (reversed) as a string" do
    game = Game.new('papas')
    game.round('x')
    game.round('c')
    game.round('p')
    expect(game.wrong_letters).to eq 'cx'
 end
 end
end
