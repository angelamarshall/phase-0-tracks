describe GuessingGame do 
end










































=begin
require_relative 'guessing_game'

describe GuessingGame do
  let(:game) { GuessingGame.new("map")}

  it "celebrates if the user wins" do
    "ma".each_char { |letter| game.guess(letter)}
    expect(game.guess("p")).to eq "Woah! You got it right. Nice work!"
  end

  it "celebrates when the user guesses beyond the correct answer" do
    "map".each_char {|letter| game.guess(letter)}
    expect(game.guess("r")).to eq "Woah! You got it right. Nice work!"
  end

  it "encourages when user guesses correctly" do 
    "m".each_char { |letter| game.guess(letter)}
    expect(game.guess("a")).to eq "Good job! That was a correct guess. You progress is: #{@progress}. You have #{@guesses} guesses left."
  end

  it "lets user know when they lose the game" do
    "ma".each_char {|letter| game.guess(letter)}
    #guesses <= 0
    expect(game.guess("i")).to eq "You lose!"
  end

  it "lets user know when their guess is not correct" do
    "".each_char {|letter| game.guess(letter)}
    expect(game.guess("o")).to eq "Your guess was not correct. You have #{@guesses} left."
  end
end
=end