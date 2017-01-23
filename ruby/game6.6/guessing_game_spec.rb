require_relative 'guessing_game'

describe GuessingGame do
  let(:game) { GuessingGame.new("finger")}

  it "celebrates when user guesses the correct letter" do
   "".each_char { |letter| game.guess_letters(letter)}
    expect(game.guess_letters("f")).to eq "Nice! That was a correct guess. You have 6 guesses left. Your progress so far is f_____."
  end

  it "tells the user if they do not guess the correct letter" do
    "".each_char { |letter| game.guess_letters(letter)}
    expect(game.guess_letters("a")).to eq "Your guess was not correct. You have 6 left."
  end

  it "lets user know if they have won the game" do
    "finger".each_char { |letter| game.guess_letters(letter)}
    expect(game.correct_guess).to eq "Congrats! You won!!!!!"
  end

  it "keeps the correct letter if guessed correctly" do
    expect(game.keep_correct_letter("i")).to eq "i"
  end

  it "celebrates if the user wins" do
    expect(game.celebrate).to eq "Congrats! You won!!!!!"
  end

  it "taunts if the user loses" do
    expect(game.taunt).to eq "YOU LOSE!"
  end
end
