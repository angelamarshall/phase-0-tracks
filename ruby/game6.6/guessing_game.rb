class GuessingGame
  attr_reader :guesses
  attr_accessor 

  def initialize
#    @progress = 
#    @guesses = user_1_word.length
 #   @answer = 
  end

  def correct_answer(guessed_word, answer)
    if guessed_word == answer
      puts "Wow! You guessed the correct word. Congrats!"
    else 
      puts "Ugh! You did not get it right..."
    end
  end

end

puts "Welcome to the Guessing Game!"
game = GuessingGame.new

puts "Hello user 1, what is your word?"
user_1_word = gets.chomp

puts "Hello user 2, what is your guess?"
user_2_word = gets.chomp

game.correct_answer(user_2_word, user_1_word)





































=begin
class GuessingGame
  # attr_reader :progress :guesses

  def initialize(word)
    @progress = "_" * word.length
    @guesses = word.length
    @_answer = word.downcase
  end

  def guess(guessing_input)
    if @guesses < 1
      if finished?
        celebrate
      else
        p "You loose!"
      end
    else
      @guesses -= 1

      guessing_input = guessing_input[0]
      guessing_input.downcase!

      if @_answer.include?(guessing_input)
        keep_correct_letter(guessing_input)
        if finished?
          celebrate
        else
          puts "Good job! That was a correct guess. You progress is: #{@progress}. You have #{@guesses} guesses left."
        end
      else
        puts "Your guess was not correct. You have #{@guesses} left."
      end
    end
  end

  private

  def keep_correct_letter(guessing_input)
    guessing_input_index = @_answer.index(guessing_input)
 #		while @_answer.include?(guessing_input)
    @progress[guessing_input_index] = guessing_input
  end

  def finished?
    @progress == @_answer
  end

  def celebrate
    p "Woah! You got it right. Nice work!"
  end
end

game = GuessingGame.new("Map")
=end
